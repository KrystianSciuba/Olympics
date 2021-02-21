from django.db import models


class Sport (models.Model):
    id = models.AutoField(primary_key=True)
    name = models.TextField(max_length=256)

    def __str__(self):
        return 'id {self.id}, name: {self.name}'.format(self=self)


class Event(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.TextField(max_length=256)
    sport = models.ForeignKey(Sport, on_delete=models.CASCADE, null=True, blank=True)


class Game(models.Model):
    id = models.AutoField(primary_key=True)
    city = models.TextField(max_length=128)
    year = models.IntegerField()
    season = models.TextField(max_length=128)
    events = models.ManyToManyField(Event, through='GameEvent', blank=True)


class Country(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.TextField()


class Medal(models.Model):
    id = models.AutoField(primary_key=True)
    color = models.TextField(max_length=128)
    event = models.ForeignKey(Event, on_delete=models.CASCADE, null=True, blank=True)
    game = models.ForeignKey(Game, on_delete=models.CASCADE, null=True, blank=True)


class Person(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.TextField(max_length=128)
    sex = models.TextField(max_length=128)
    year_of_birth = models.IntegerField()
    nationality = models.ForeignKey(Country, on_delete=models.CASCADE, null=True, blank=True)
    medals = models.ManyToManyField(Medal, through='PersonMedal', blank=True)

    def __str__(self):
        return 'id {self.id}, name: {self.name}'.format(self=self)


class PersonMedal(models.Model):
    person = models.ForeignKey(Person, on_delete=models.CASCADE, null=True)
    medal = models.ForeignKey(Medal, on_delete=models.CASCADE, null=True)


class GameEvent(models.Model):
    game = models.ForeignKey(Game, on_delete=models.CASCADE, null=True)
    event = models.ForeignKey(Event, on_delete=models.CASCADE, null=True)

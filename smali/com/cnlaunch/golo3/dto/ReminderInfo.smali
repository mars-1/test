.class public Lcom/cnlaunch/golo3/dto/ReminderInfo;
.super Ljava/lang/Object;
.source "ReminderInfo.java"


# instance fields
.field private reminder_context:Ljava/lang/String;

.field private reminder_title:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReminder_context()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ReminderInfo;->reminder_context:Ljava/lang/String;

    return-object v0
.end method

.method public getReminder_title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ReminderInfo;->reminder_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/ReminderInfo;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setReminder_context(Ljava/lang/String;)V
    .locals 0
    .parameter "reminder_context"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ReminderInfo;->reminder_context:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setReminder_title(Ljava/lang/String;)V
    .locals 0
    .parameter "reminder_title"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ReminderInfo;->reminder_title:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/ReminderInfo;->time:Ljava/lang/String;

    .line 13
    return-void
.end method

.class public Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;
.super Ljava/util/Observable;
.source "IntentChangeSubject.java"


# static fields
.field private static instance:Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;->instance:Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;->instance:Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;

    return-object v0
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 10
    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    .line 11
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 12
    return-void
.end method

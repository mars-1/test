.class public Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;
.super Lcom/cnlaunch/diagnosemodule/bean/BasicBean;
.source "BasicButtonBean.java"


# instance fields
.field command:Ljava/lang/String;

.field id:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/bean/BasicBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .parameter "command"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->command:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->id:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->title:Ljava/lang/String;

    .line 18
    return-void
.end method

.class Lcom/cnlaunch/newgolo/service/GoloProService$4;
.super Ljava/lang/Object;
.source "GoloProService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/service/GoloProService;->scheduleLogin(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/service/GoloProService;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/service/GoloProService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/service/GoloProService$4;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/cnlaunch/newgolo/service/GoloProService$4;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    const/4 v1, 0x0

    #calls: Lcom/cnlaunch/newgolo/service/GoloProService;->login(Z)V
    invoke-static {v0, v1}, Lcom/cnlaunch/newgolo/service/GoloProService;->access$4(Lcom/cnlaunch/newgolo/service/GoloProService;Z)V

    .line 160
    return-void
.end method

.class Lcom/cnlaunch/newgolo/service/GoloProService$ConnectionThread;
.super Landroid/os/HandlerThread;
.source "GoloProService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/service/GoloProService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/service/GoloProService;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/newgolo/service/GoloProService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/cnlaunch/newgolo/service/GoloProService$ConnectionThread;->this$0:Lcom/cnlaunch/newgolo/service/GoloProService;

    .line 125
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 126
    return-void
.end method

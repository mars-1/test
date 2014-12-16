.class Lcom/cnlaunch/x431pro/activity/GDApplication$1;
.super Ljava/lang/Object;
.source "GDApplication.java"

# interfaces
.implements Lcom/cnlaunch/framework/common/AppCrashHandler$AppCrashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/GDApplication;->initCrashHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/GDApplication;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/GDApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/GDApplication$1;->this$0:Lcom/cnlaunch/x431pro/activity/GDApplication;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public upload(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/GDApplication$1;->this$0:Lcom/cnlaunch/x431pro/activity/GDApplication;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/activity/GDApplication;->uploadCrashFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

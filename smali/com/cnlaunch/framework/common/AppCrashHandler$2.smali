.class Lcom/cnlaunch/framework/common/AppCrashHandler$2;
.super Ljava/lang/Object;
.source "AppCrashHandler.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/common/AppCrashHandler;->sendCrashReport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/framework/common/AppCrashHandler;


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/common/AppCrashHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/common/AppCrashHandler$2;->this$0:Lcom/cnlaunch/framework/common/AppCrashHandler;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter "dir"
    .parameter "filename"

    .prologue
    .line 251
    const-string/jumbo v0, ".cr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

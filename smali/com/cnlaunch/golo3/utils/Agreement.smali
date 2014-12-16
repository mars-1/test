.class public Lcom/cnlaunch/golo3/utils/Agreement;
.super Ljava/lang/Object;
.source "Agreement.java"


# static fields
.field public static final CACHE_SUFFIX:Ljava/lang/String; = ".EMenu"

.field public static final PROJECT_NAME:Ljava/lang/String; = "EMenu"

.field public static final ROOT_PATH:Ljava/lang/String; = null

.field public static final SAVE_FLOADER:Ljava/lang/String; = null

.field public static final SHARED_FILE_NAME:Ljava/lang/String; = "EMenu"

.field public static SOCKET_SERVER_HOST:Ljava/lang/String; = null

.field public static SOCKET_SERVER_PORT:I = 0x0

.field public static final VERSION_CODE:Ljava/lang/String; = "1.0"

.field public static final VERSION_NAME:Ljava/lang/String; = "v1.0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/golo3/utils/Agreement;->ROOT_PATH:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cnlaunch/golo3/utils/Agreement;->ROOT_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "EMenu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/golo3/utils/Agreement;->SAVE_FLOADER:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/golo3/utils/Agreement;->SOCKET_SERVER_HOST:Ljava/lang/String;

    .line 31
    const/16 v0, 0x3e8

    sput v0, Lcom/cnlaunch/golo3/utils/Agreement;->SOCKET_SERVER_PORT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

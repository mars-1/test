.class public Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;
.super Ljava/lang/Object;
.source "HelpDocManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;,
        Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;
    }
.end annotation


# static fields
.field private static Q_ASyncObject:Ljava/lang/Object;

.field private static helpMenuSyncObject:Ljava/lang/Object;

.field private static mHelpMenuHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mLangue2DirPath:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mLangue2Q_A_DirPath:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field listIgnoreDir:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;

.field private mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;

.field mLanguage:Ljava/lang/String;

.field protected mParentHandler:Landroid/os/Handler;

.field private mReadQuestion2AnswerTask:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;

.field private mScanHelpMenuTask:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;

.field massets:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->helpMenuSyncObject:Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->Q_ASyncObject:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mLangue2DirPath:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mHelpMenuHashMap:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mLangue2Q_A_DirPath:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 1
    .parameter "assets"

    .prologue
    .line 48
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->type_read_help_doc:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1
    .parameter "assets"
    .parameter "strType"

    .prologue
    .line 44
    const-string/jumbo v0, "en"

    invoke-direct {p0, p1, p2, v0}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "assets"
    .parameter "strType"
    .parameter "strLanguage"

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 32
    return-void
.end method

.method constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "assets"
    .parameter "strType"
    .parameter "strLanguage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p4, listIgnoreDir:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->massets:Landroid/content/res/AssetManager;

    .line 36
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mLanguage:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->listIgnoreDir:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;-><init>(Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;

    .line 39
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;->getInstance()Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;

    .line 40
    invoke-virtual {p0, p2}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->initMenu(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method static synthetic access$0()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->helpMenuSyncObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mLangue2DirPath:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;)Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->Q_ASyncObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mLangue2Q_A_DirPath:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mHelpMenuHashMap:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public StartReadQ2A()V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mReadQuestion2AnswerTask:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mReadQuestion2AnswerTask:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->stopThread()V

    .line 269
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mLanguage:Ljava/lang/String;

    sget-object v2, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->type_read_question_answer:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;-><init>(Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mReadQuestion2AnswerTask:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;

    .line 270
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mReadQuestion2AnswerTask:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 271
    return-void
.end method

.method public initMenu(Ljava/lang/String;)V
    .locals 2
    .parameter "strType"

    .prologue
    .line 60
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$1;

    invoke-direct {v1, p0, p1}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$1;-><init>(Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 155
    return-void
.end method

.method public setCurrentLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mLanguage:Ljava/lang/String;

    .line 57
    return-void
.end method

.method setViewHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mParentHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method public setupScanHelpMenu()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mScanHelpMenuTask:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mScanHelpMenuTask:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;->stopThread()V

    .line 278
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mLanguage:Ljava/lang/String;

    sget-object v2, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->type_read_help_doc:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;-><init>(Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mScanHelpMenuTask:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;

    .line 279
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mScanHelpMenuTask:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$ScanHelpMenuTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 280
    return-void
.end method

.class public Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;
.super Ljava/lang/Object;
.source "HelpStringConstant.java"


# static fields
.field public static FAQ:Ljava/lang/String;

.field public static FUN:Ljava/lang/String;

.field public static pdf_gologuide:Ljava/lang/String;

.field public static pdf_quickstart:Ljava/lang/String;

.field public static pdf_usermanual:Ljava/lang/String;

.field public static str_KeyWord:Ljava/lang/String;

.field public static str_MapKey_KeyWords:Ljava/lang/String;

.field public static str_MapKey_Sections:Ljava/lang/String;

.field public static str_Module:Ljava/lang/String;

.field public static str_OpenHtmlFile:Ljava/lang/String;

.field public static str_Question_Answer:Ljava/lang/String;

.field public static type_read_help_doc:Ljava/lang/String;

.field public static type_read_question_answer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-string/jumbo v0, "keyword"

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_KeyWord:Ljava/lang/String;

    .line 5
    const-string/jumbo v0, "module"

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_Module:Ljava/lang/String;

    .line 6
    const-string/jumbo v0, "openHtmlFile"

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_OpenHtmlFile:Ljava/lang/String;

    .line 8
    const-string/jumbo v0, "sections"

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_MapKey_Sections:Ljava/lang/String;

    .line 9
    const-string/jumbo v0, "keywords"

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_MapKey_KeyWords:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "Question_Answer"

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_Question_Answer:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "1"

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->type_read_help_doc:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, "2"

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->type_read_question_answer:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "quickstart_"

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->pdf_quickstart:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "user_manual_"

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->pdf_usermanual:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "golo_guide_"

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->pdf_gologuide:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "FAQ_LastCheckedTitle"

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->FAQ:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "FUN_LastCheckedTitle"

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->FUN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

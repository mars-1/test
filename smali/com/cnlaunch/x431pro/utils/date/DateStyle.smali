.class public Lcom/cnlaunch/x431pro/utils/date/DateStyle;
.super Ljava/lang/Object;
.source "DateStyle.java"


# static fields
.field public static HH_MM:Ljava/lang/String;

.field public static HH_MM_SS:Ljava/lang/String;

.field public static MM_DD:Ljava/lang/String;

.field public static MM_DD_CN:Ljava/lang/String;

.field public static MM_DD_EN:Ljava/lang/String;

.field public static MM_DD_HH_MM:Ljava/lang/String;

.field public static MM_DD_HH_MM_CN:Ljava/lang/String;

.field public static MM_DD_HH_MM_EN:Ljava/lang/String;

.field public static MM_DD_HH_MM_SS:Ljava/lang/String;

.field public static MM_DD_HH_MM_SS_CN:Ljava/lang/String;

.field public static MM_DD_HH_MM_SS_EN:Ljava/lang/String;

.field public static YYYYMMDDHHMMSS:Ljava/lang/String;

.field public static YYYY_MM:Ljava/lang/String;

.field public static YYYY_MM_CN:Ljava/lang/String;

.field public static YYYY_MM_DD:Ljava/lang/String;

.field public static YYYY_MM_DD_CN:Ljava/lang/String;

.field public static YYYY_MM_DD_EN:Ljava/lang/String;

.field public static YYYY_MM_DD_HH_MM:Ljava/lang/String;

.field public static YYYY_MM_DD_HH_MM_CN:Ljava/lang/String;

.field public static YYYY_MM_DD_HH_MM_EN:Ljava/lang/String;

.field public static YYYY_MM_DD_HH_MM_SS:Ljava/lang/String;

.field public static YYYY_MM_DD_HH_MM_SS_CN:Ljava/lang/String;

.field public static YYYY_MM_DD_HH_MM_SS_EN:Ljava/lang/String;

.field public static YYYY_MM_EN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "MM-DD"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->MM_DD:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "YYYY-MM"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->YYYY_MM:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "YYYY-MM-DD"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->YYYY_MM_DD:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "MM-DD hh:mm:ss"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->MM_DD_HH_MM:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "MM-DD hh:mm:ss"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->MM_DD_HH_MM_SS:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "YYYY-MM-DD HH:MM"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->YYYY_MM_DD_HH_MM:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "YYYY-MM-DD hh:mm:ss"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->YYYY_MM_DD_HH_MM_SS:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "YYYYMMDDhhmmss"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->YYYYMMDDHHMMSS:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "MM/DD"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->MM_DD_EN:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "YYYY/MM"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->YYYY_MM_EN:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "YYYY/MM/DD"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->YYYY_MM_DD_EN:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "MM/dd hh:mm:ss"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->MM_DD_HH_MM_EN:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "MM/dd hh:mm:ss"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->MM_DD_HH_MM_SS_EN:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "yyyy/MM/DD hh:mm:ss"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->YYYY_MM_DD_HH_MM_EN:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "yyyy/MM/DD hh:mm:ss"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->YYYY_MM_DD_HH_MM_SS_EN:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "MM\u6708DD\u65e5"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->MM_DD_CN:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "YYYY\u5e74MM\u6708"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->YYYY_MM_CN:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "YYYY\u5e74MM\u6708DD\u65e5"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->YYYY_MM_DD_CN:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "MM\u6708DD\u65e5 hh:mm:ss"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->MM_DD_HH_MM_CN:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "MM\u6708DD\u65e5 hh:mm:ss"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->MM_DD_HH_MM_SS_CN:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "YYYY\u5e74MM\u6708DD\u65e5hh:mm:ss"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->YYYY_MM_DD_HH_MM_CN:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "YYYY\u5e74MM\u6708DD\u65e5 hh:mm:ss"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->YYYY_MM_DD_HH_MM_SS_CN:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "hh:mm"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->HH_MM:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "hh:mm:ss"

    sput-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->HH_MM_SS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public abstract Lcom/cnlaunch/framework/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ACTION_REGEX:Ljava/lang/String; = "action="

.field public static final ALIPAY_WEBSITE_PATH:Ljava/lang/String; = "http://mycar.x431.com/services/alipay/enterMobileAlipay.action?orderSn="

.field public static final APP_ID:Ljava/lang/String; = "app_id"

.field public static final APP_ID_VALUE:Ljava/lang/String; = "2013122400000003"

.field public static final AUTHENTICATE:Ljava/lang/String; = "authenticate"

.field public static final CC:Ljava/lang/String; = "cc"

.field public static final EXPIRED_REMIND:Ljava/lang/String; = "expired_remind"

.field public static final GOOGLE_GEOCODE_PATH:Ljava/lang/String; = "http://maps.google.com/maps/api/geocode/json"

.field public static final LANG:Ljava/lang/String; = "Lang"

.field public static LOCAL_BASE_PATH:Ljava/lang/String; = null

.field public static final MYCAR_WEBSERVICE_URL:Ljava/lang/String; = "http://mycar.x431.com/services/"

.field public static final PAYPAL_INIT_SUCCESS:I = 0x7d0

.field public static final PAYPAL_WEBSITE_PATH:Ljava/lang/String; = "http://mycar.x431.com/services/paypal/enterMobilePaypal.action?orderSn="

.field public static final SIGN:Ljava/lang/String; = "sign"

.field public static final THEME:Ljava/lang/String; = "Theme"

.field public static final TOKEN:Ljava/lang/String; = "token"

.field public static final UC_WEBSERVICE_URL:Ljava/lang/String; = "http://uc.x431.com/services/"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final USER_PUBLIC_ID:Ljava/lang/String; = "USER_PUBLIC_ID"

.field public static final USER_PUBLIC_NAME:Ljava/lang/String; = "USER_PUBLIC_NAME"

.field public static final VER:Ljava/lang/String; = "ver"

.field public static final VER_VALUE:Ljava/lang/String; = "1.0.0"

.field public static final WEBSERVICE_NAMESPACE:Ljava/lang/String; = "http://www.x431.com"

.field public static final WEBSERVICE_SOAPACION:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/cnlaunch/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/framework/common/Constants;->LOCAL_BASE_PATH:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

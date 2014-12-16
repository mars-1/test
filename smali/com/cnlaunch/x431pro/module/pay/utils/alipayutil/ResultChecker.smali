.class public Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/ResultChecker;
.super Ljava/lang/Object;
.source "ResultChecker.java"


# static fields
.field public static final RESULT_CHECK_SIGN_FAILED:I = 0x1

.field public static final RESULT_CHECK_SIGN_SUCCEED:I = 0x2

.field public static final RESULT_INVALID_PARAM:I


# instance fields
.field mContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/ResultChecker;->mContent:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public checkSign()I
    .locals 11

    .prologue
    .line 50
    const/4 v5, 0x2

    .line 53
    .local v5, retVal:I
    :try_start_0
    iget-object v9, p0, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/ResultChecker;->mContent:Ljava/lang/String;

    const-string/jumbo v10, ";"

    invoke-static {v9, v10}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 54
    .local v2, objContent:Lorg/json/JSONObject;
    const-string/jumbo v9, "result"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, result:Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 57
    const-string/jumbo v9, "&sign_type="

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 58
    .local v1, iSignContentEnd:I
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, signContent:Ljava/lang/String;
    const-string/jumbo v9, "&"

    invoke-static {v4, v9}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 61
    .local v3, objResult:Lorg/json/JSONObject;
    const-string/jumbo v9, "sign_type"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, signType:Ljava/lang/String;
    const-string/jumbo v9, "\""

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 64
    const-string/jumbo v9, "sign"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, sign:Ljava/lang/String;
    const-string/jumbo v9, "\""

    const-string/jumbo v10, ""

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 67
    const-string/jumbo v9, "RSA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 69
    const-string/jumbo v9, "lDgBoQzIhqly%2BwP3mxt8uYdEwcClej9AEmB2uPdkdeTDReH81EbyhN97jw8g3qBXL4sRBJ2BHEexwzneonPyBFvG9mfu1BweLh0Ixylbd8emK%2B3uubuv%2BF3euiPRmEVDbZy%2Be1qJtxdPJnqOMkJ0qPy%2F4wmjgRXEy8HznpN0Uss%3D"

    .line 68
    invoke-static {v7, v6, v9}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Rsa;->doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 69
    if-nez v9, :cond_0

    .line 70
    const/4 v5, 0x1

    .line 77
    .end local v1           #iSignContentEnd:I
    .end local v2           #objContent:Lorg/json/JSONObject;
    .end local v3           #objResult:Lorg/json/JSONObject;
    .end local v4           #result:Ljava/lang/String;
    .end local v6           #sign:Ljava/lang/String;
    .end local v7           #signContent:Ljava/lang/String;
    .end local v8           #signType:Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

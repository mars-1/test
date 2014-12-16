.class public Lcom/cnlaunch/x431pro/activity/login/LoginActivity;
.super Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final LOGIN_FINISH:I = 0x7c

.field public static final LOGIN_RESULT:I = 0x7b


# instance fields
.field private final TAG:Ljava/lang/String;

.field USERNAMELIST:Ljava/lang/String;

.field UsernameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private btn_login:Landroid/widget/Button;

.field private edit_password:Landroid/widget/EditText;

.field private edit_username:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

.field private handler:Landroid/os/Handler;

.field private password:Ljava/lang/String;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

.field private tv_forget:Landroid/widget/TextView;

.field private tv_regist:Landroid/widget/TextView;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;-><init>()V

    .line 52
    const-class v0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->TAG:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "username_list"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->USERNAMELIST:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->UsernameList:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/login/LoginActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->handler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method public static String2StringList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "StringListString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;,
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    .line 97
    .local v2, mobileBytes:[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 98
    .local v1, byteArrayInputStream:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    .local v3, objectInputStream:Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 100
    .local v0, StringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 101
    return-object v0
.end method

.method public static StringList2String(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    .local p0, StringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    .local v1, byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 88
    .local v2, objectOutputStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 89
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 90
    .local v0, StringListString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 91
    return-object v0
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/login/LoginActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->returnLoginResultToRTU(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/login/LoginActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->btn_login:Landroid/widget/Button;

    return-object v0
.end method

.method private initViews()V
    .locals 11

    .prologue
    const/16 v10, 0x14

    const/4 v9, 0x1

    const v8, 0x7f0d02b4

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 125
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 127
    const v3, 0x7f0d02a6

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->edit_username:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    .line 128
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->edit_username:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    new-array v4, v9, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 130
    const v3, 0x7f0d02af

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->edit_password:Landroid/widget/EditText;

    .line 131
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->edit_password:Landroid/widget/EditText;

    new-array v4, v9, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 132
    const v3, 0x7f0d02b0

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->btn_login:Landroid/widget/Button;

    .line 133
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->btn_login:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->tv_regist:Landroid/widget/TextView;

    .line 135
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->tv_regist:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v3, 0x7f0d02b2

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->tv_forget:Landroid/widget/TextView;

    .line 137
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->tv_forget:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->tv_forget:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setFlags(I)V

    .line 140
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->tv_regist:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setFlags(I)V

    .line 142
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->edit_username:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v5, "login_username"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->edit_password:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v5, "login_password"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->edit_username:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->edit_username:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->setSelection(I)V

    .line 145
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->edit_password:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 148
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "ISRTULOGIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, rtuRequest:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v3, "RTU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 151
    const v3, 0x7f0d02b3

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->USERNAMELIST:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, UsernameString:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    :try_start_0
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->String2StringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->UsernameList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 169
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->edit_username:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->UsernameList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->setList(Ljava/util/ArrayList;)V

    .line 170
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->edit_username:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->setPasswordText(Landroid/widget/EditText;)V

    .line 171
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->edit_password:Landroid/widget/EditText;

    new-instance v4, Lcom/cnlaunch/x431pro/activity/login/LoginActivity$2;

    invoke-direct {v4, p0}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity$2;-><init>(Lcom/cnlaunch/x431pro/activity/login/LoginActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 181
    return-void

    .line 153
    .end local v0           #UsernameString:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 154
    const v3, 0x7f0d02b3

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 161
    .restart local v0       #UsernameString:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 162
    .local v1, e:Ljava/io/StreamCorruptedException;
    invoke-virtual {v1}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    goto :goto_1

    .line 163
    .end local v1           #e:Ljava/io/StreamCorruptedException;
    :catch_1
    move-exception v1

    .line 164
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 165
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 166
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private returnLoginResultToRTU(I)V
    .locals 1
    .parameter "loginResult"

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->setResult(I)V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->setResult(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 221
    :goto_0
    :pswitch_0
    return-void

    .line 188
    :pswitch_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->edit_username:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->username:Ljava/lang/String;

    .line 189
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->password:Ljava/lang/String;

    .line 191
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->username:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f07062f

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->password:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f070630

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 200
    :cond_1
    new-instance v2, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;-><init>(Landroid/content/Context;)V

    .line 201
    .local v2, lf:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->setHandler(Landroid/os/Handler;)V

    .line 202
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->password:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->Login(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    .end local v2           #lf:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->mContext:Landroid/content/Context;

    const-class v4, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->finish()V

    goto :goto_0

    .line 214
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->mContext:Landroid/content/Context;

    const-class v4, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .local v1, intent_find_password:Landroid/content/Intent;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->edit_username:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->username:Ljava/lang/String;

    .line 216
    const-string/jumbo v3, "username"

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->username:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d02b0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f0300ea

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->setContentView(I)V

    .line 108
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "is_screen_switch"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "Orientation"

    invoke-virtual {v0, v1, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 111
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->setRequestedOrientation(I)V

    .line 116
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->initViews()V

    .line 117
    return-void

    .line 112
    :cond_1
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "Orientation"

    invoke-virtual {v0, v1, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 113
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->onDestroy()V

    .line 238
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 233
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->onStop()V

    .line 234
    return-void
.end method
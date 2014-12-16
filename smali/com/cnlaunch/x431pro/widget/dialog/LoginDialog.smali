.class public abstract Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;
.super Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;
.source "LoginDialog.java"


# instance fields
.field private LoginBroadcast:Landroid/content/BroadcastReceiver;

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

.field private btnLogin:Landroid/widget/Button;

.field private editPassword:Landroid/widget/EditText;

.field private editUsername:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

.field private mContentView:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field private password:Ljava/lang/String;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

.field private textviewForget:Landroid/widget/TextView;

.field private textviewRegist:Landroid/widget/TextView;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x14

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v5, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->mContentView:Landroid/view/View;

    .line 51
    iput-object v5, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->LoginBroadcast:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object v5, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->mContext:Landroid/content/Context;

    .line 54
    const-string/jumbo v3, "username_list"

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->USERNAMELIST:Ljava/lang/String;

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->UsernameList:Ljava/util/ArrayList;

    .line 78
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->mContext:Landroid/content/Context;

    .line 79
    const v3, 0x7f0704f2

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->setTitle(I)V

    .line 80
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03011b

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->mContentView:Landroid/view/View;

    .line 83
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->setBottomLayoutGone()V

    .line 84
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->mContentView:Landroid/view/View;

    const v4, 0x7f0d02a6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->editUsername:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    .line 85
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->editUsername:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    new-array v4, v7, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 86
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->editUsername:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v5, "login_username"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->mContentView:Landroid/view/View;

    const v4, 0x7f0d02af

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->editPassword:Landroid/widget/EditText;

    .line 91
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->editPassword:Landroid/widget/EditText;

    new-array v4, v7, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 92
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->editPassword:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v5, "login_password"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->USERNAMELIST:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, UsernameString:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    :try_start_0
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->String2StringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->UsernameList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 106
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->editUsername:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->UsernameList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->setList(Ljava/util/ArrayList;)V

    .line 107
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->editUsername:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->setPasswordText(Landroid/widget/EditText;)V

    .line 118
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->mContentView:Landroid/view/View;

    const v4, 0x7f0d02b0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->btnLogin:Landroid/widget/Button;

    .line 119
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->btnLogin:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->mContentView:Landroid/view/View;

    const v4, 0x7f0d02b4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->textviewRegist:Landroid/widget/TextView;

    .line 122
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->textviewRegist:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/text/TextPaint;->setFlags(I)V

    .line 123
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->textviewRegist:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->mContentView:Landroid/view/View;

    const v4, 0x7f0d02b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->textviewForget:Landroid/widget/TextView;

    .line 126
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->textviewForget:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/text/TextPaint;->setFlags(I)V

    .line 127
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->textviewForget:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "login"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    .local v2, filter:Landroid/content/IntentFilter;
    new-instance v3, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog$1;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog$1;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->LoginBroadcast:Landroid/content/BroadcastReceiver;

    .line 140
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->LoginBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    return-void

    .line 98
    .end local v2           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 99
    .local v1, e:Ljava/io/StreamCorruptedException;
    invoke-virtual {v1}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v1           #e:Ljava/io/StreamCorruptedException;
    :catch_1
    move-exception v1

    .line 101
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 103
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
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
    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    .line 69
    .local v2, mobileBytes:[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 70
    .local v1, byteArrayInputStream:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 71
    .local v3, objectInputStream:Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 72
    .local v0, StringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 73
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
    .line 58
    .local p0, StringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    .local v1, byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 60
    .local v2, objectOutputStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 61
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 62
    .local v0, StringListString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 63
    return-object v0
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->LoginBroadcast:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public createContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public abstract loginListenter(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 169
    :goto_0
    :pswitch_0
    return-void

    .line 148
    :pswitch_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->editUsername:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->username:Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->password:Ljava/lang/String;

    .line 150
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->password:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->loginListenter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->cancel()V

    goto :goto_0

    .line 162
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v1, intent_find_password:Landroid/content/Intent;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->editUsername:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->username:Ljava/lang/String;

    .line 164
    const-string/jumbo v2, "username"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->username:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->cancel()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x7f0d02b0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

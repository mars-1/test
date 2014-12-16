.class Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;
.super Ljava/lang/Object;
.source "DropdownEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

.field private final synthetic val$holder:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->val$holder:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "arg0"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 163
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->val$holder:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, textString:Ljava/lang/String;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 165
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v7

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->usernameAdapter:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    iget-object v8, v8, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->refreshData(Ljava/util/ArrayList;)V

    .line 166
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v7

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v8

    iget-object v8, v8, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->USERNAMELIST:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, UsernameString:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v1, UsernameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->String2StringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 177
    :goto_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 180
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 181
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 182
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 183
    .local v6, username:Ljava/lang/String;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v7

    iget-object v8, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, password:Ljava/lang/String;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v8

    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v7

    iget-object v8, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mEditText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v7

    iget-object v9, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v7

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v8, "login_username"

    invoke-virtual {v7, v8, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v7

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v8, "login_password"

    invoke-virtual {v7, v8, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v7

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->handle:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 200
    .end local v4           #password:Ljava/lang/String;
    .end local v6           #username:Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_1
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v7

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v8}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v8

    iget-object v8, v8, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->USERNAMELIST:Ljava/lang/String;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;->StringList2String(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v7

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->val$holder:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;

    iget-object v8, v8, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 205
    :goto_2
    return-void

    .line 170
    :catch_0
    move-exception v3

    .line 171
    .local v3, e:Ljava/io/StreamCorruptedException;
    invoke-virtual {v3}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 172
    .end local v3           #e:Ljava/io/StreamCorruptedException;
    :catch_1
    move-exception v3

    .line 173
    .local v3, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 174
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v3

    .line 175
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 190
    .end local v3           #e:Ljava/io/IOException;
    :cond_1
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v7

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v7

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->handle:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 193
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v7

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v8, "login_username"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter$1;->this$1:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    #getter for: Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;->access$0(Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;)Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    move-result-object v7

    iget-object v7, v7, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v8, "login_password"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 202
    :catch_3
    move-exception v3

    .line 203
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

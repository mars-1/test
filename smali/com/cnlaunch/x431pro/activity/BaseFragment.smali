.class public abstract Lcom/cnlaunch/x431pro/activity/BaseFragment;
.super Landroid/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/cnlaunch/framework/network/async/OnDataListener;


# instance fields
.field protected btn_left:Landroid/widget/ImageButton;

.field protected btn_right:Landroid/widget/TextView;

.field protected bundle:Landroid/os/Bundle;

.field protected fragmentManager:Landroid/app/FragmentManager;

.field private mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

.field protected mContentView:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field protected mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;

.field protected radioGroup_head:Landroid/widget/RadioGroup;

.field protected tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->cancelRequest()V

    .line 111
    return-void
.end method

.method public cancelRequest(I)V
    .locals 1
    .parameter "requsetCode"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->cancelRequest(I)V

    .line 104
    return-void
.end method

.method public doInBackground(I)Ljava/lang/Object;
    .locals 1
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public isSuccess(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mContext:Landroid/content/Context;

    .line 335
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/MainActivity;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;

    .line 336
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c028e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->radioGroup_head:Landroid/widget/RadioGroup;

    .line 337
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c028d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->btn_left:Landroid/widget/ImageButton;

    .line 338
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c028f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->btn_right:Landroid/widget/TextView;

    .line 339
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->tv_title:Landroid/widget/TextView;

    .line 340
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    .line 341
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->fragmentManager:Landroid/app/FragmentManager;

    .line 342
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 343
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public abstract onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mContentView:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mContentView:Landroid/view/View;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/ActivityPageManager;->unbindReferences(Landroid/view/View;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mContentView:Landroid/view/View;

    .line 62
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    const v1, 0x7f0704e0

    .line 125
    sparse-switch p2, :sswitch_data_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 128
    :sswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0704df

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 135
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 142
    :sswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 125
    :sswitch_data_0
    .sparse-switch
        -0x3e7 -> :sswitch_1
        -0x190 -> :sswitch_0
        -0xc8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 121
    return-void
.end method

.method public replaceFragment(Ljava/lang/String;)V
    .locals 1
    .parameter "fragmentClassName"

    .prologue
    .line 213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 214
    return-void
.end method

.method public replaceFragment(Ljava/lang/String;I)V
    .locals 1
    .parameter "fragmentClassName"
    .parameter "transitionType"

    .prologue
    .line 329
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 330
    return-void
.end method

.method public replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .parameter "fragmentClassName"
    .parameter "args"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 245
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 246
    .local v0, fragment:Landroid/app/Fragment;
    const-string/jumbo v2, "BaseFragment"

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Fragment Tag="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    if-nez v0, :cond_0

    .line 248
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 249
    const-string/jumbo v2, "BaseFragment"

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "Fragment is not find"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move-object v2, v0

    .line 254
    check-cast v2, Lcom/cnlaunch/x431pro/activity/BaseFragment;

    invoke-virtual {v2, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->setBundle(Landroid/os/Bundle;)V

    .line 255
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 257
    .local v1, ft:Landroid/app/FragmentTransaction;
    const v2, 0x7f0c0052

    invoke-virtual {v1, v2, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 258
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 259
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 260
    return-void

    .line 252
    .end local v1           #ft:Landroid/app/FragmentTransaction;
    :cond_0
    const-string/jumbo v2, "BaseFragment"

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "Fragment is  find"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public replaceFragment(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 6
    .parameter "fragmentClassName"
    .parameter "args"
    .parameter "transitionType"

    .prologue
    .line 296
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->fragmentManager:Landroid/app/FragmentManager;

    .line 297
    invoke-virtual {v2, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 298
    .local v0, fragment:Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 299
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    :cond_0
    move-object v2, v0

    .line 301
    check-cast v2, Lcom/cnlaunch/x431pro/activity/BaseFragment;

    invoke-virtual {v2, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->setBundle(Landroid/os/Bundle;)V

    .line 302
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 305
    .local v1, ft:Landroid/app/FragmentTransaction;
    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    .line 306
    const v2, 0x7f050002

    .line 307
    const v3, 0x7f050005

    .line 308
    const v4, 0x7f050001

    .line 309
    const v5, 0x7f050006

    .line 306
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 316
    :cond_1
    :goto_0
    const v2, 0x7f0c0052

    invoke-virtual {v1, v2, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 317
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 318
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 319
    return-void

    .line 310
    :cond_2
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 311
    const/high16 v2, 0x7f05

    .line 312
    const v3, 0x7f050007

    .line 313
    const v4, 0x7f050003

    .line 314
    const v5, 0x7f050004

    .line 311
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public request(I)V
    .locals 1
    .parameter "requsetCode"

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->request(IZ)V

    .line 83
    return-void
.end method

.method public request(IZ)V
    .locals 1
    .parameter "requsetCode"
    .parameter "isCheckNetwork"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    invoke-virtual {v0, p1, p2, p0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->request(IZLcom/cnlaunch/framework/network/async/OnDataListener;)V

    .line 95
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->bundle:Landroid/os/Bundle;

    .line 205
    return-void
.end method

.method public setLeftImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->btn_left:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 170
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.class public Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ViewPagerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private pageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, pageViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;->pageViews:Ljava/util/ArrayList;

    .line 37
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 56
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 90
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 61
    sget-object v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;->TAG:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "instantiateItem enter."

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 63
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 64
    .local v1, viewGroup:Landroid/view/ViewGroup;
    sget-object v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;->TAG:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "viewGroup="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",arg1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",childView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 68
    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 69
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 46
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 75
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 85
    return-void
.end method

.class public Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseActiveTestListAdapter.java"


# instance fields
.field clickListener:Landroid/view/View$OnClickListener;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicActiveTestBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mDialog:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicActiveTestBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicActiveTestBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    new-instance v0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter$1;-><init>(Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;)V

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;->clickListener:Landroid/view/View$OnClickListener;

    .line 29
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;->list:Ljava/util/ArrayList;

    .line 30
    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/cnlaunch/diagnosemodule/R$style;->DiagnoseMessageDialogTheme:I

    invoke-direct {v0, p2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;->mDialog:Landroid/app/AlertDialog$Builder;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFeedbackCmd(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 65
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeedbackType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "46"

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseActiveTestListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 50
    return-object p2
.end method

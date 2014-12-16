.class public Lcom/cnlaunch/diagnosemodule/adapter/BaseSpeciaFunctionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseSpeciaFunctionListAdapter.java"


# instance fields
.field public colums:I

.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "colums"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseSpeciaFunctionListAdapter;->colums:I

    .line 28
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseSpeciaFunctionListAdapter;->list:Ljava/util/ArrayList;

    .line 29
    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseSpeciaFunctionListAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput p3, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseSpeciaFunctionListAdapter;->colums:I

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseSpeciaFunctionListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFeedbackCmd(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 66
    iget v0, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseSpeciaFunctionListAdapter;->colums:I

    div-int v0, p1, v0

    add-int/lit8 v0, v0, 0x50

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeedbackType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "36"

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseSpeciaFunctionListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 45
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

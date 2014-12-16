.class public Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemindAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;,
        Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;,
        Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;,
        Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$ViewHold;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemindAdapter"


# instance fields
.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->datas:Ljava/util/List;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->selectedPosition:I

    .line 36
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->datas:Ljava/util/List;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->selectedPosition:I

    .line 40
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->datas:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->context:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private displayDetail(ILandroid/view/View;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/16 v7, 0xaa

    const/high16 v6, -0x100

    .line 181
    if-nez p2, :cond_2

    .line 182
    const-string/jumbo v4, "RemindAdapter"

    const-string/jumbo v5, "displayDetail convertView == null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;

    invoke-direct {v1, p0, v9}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;-><init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;)V

    .line 184
    .local v1, detailViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300c9

    invoke-virtual {v4, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 185
    const v4, 0x7f0c0269

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->detailView:Landroid/view/View;

    .line 186
    const v4, 0x7f0c0263

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvName:Landroid/widget/TextView;

    .line 187
    const v4, 0x7f0c0266

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvTime:Landroid/widget/TextView;

    .line 188
    const v4, 0x7f0c0268

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvDetail:Landroid/widget/TextView;

    .line 189
    const v4, 0x7f0c0264

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvContent:Landroid/widget/TextView;

    .line 190
    const v4, 0x7f0c0265

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvSee:Landroid/widget/TextView;

    .line 191
    const v4, 0x7f0c0267

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->expend:Landroid/widget/ImageView;

    .line 192
    const v4, 0x7f0c0136

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_car_num_textview_text:Landroid/widget/TextView;

    .line 193
    const v4, 0x7f0c0135

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_car_type_textview_text:Landroid/widget/TextView;

    .line 194
    const v4, 0x7f0c0137

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_car_brand_textview_text:Landroid/widget/TextView;

    .line 195
    const v4, 0x7f0c0138

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_car_model_textview_text:Landroid/widget/TextView;

    .line 196
    const v4, 0x7f0c0139

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_car_vin_textview_text:Landroid/widget/TextView;

    .line 197
    const v4, 0x7f0c013b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_car_year_textview_text:Landroid/widget/TextView;

    .line 198
    const v4, 0x7f0c013d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_car_discharge_textview_text:Landroid/widget/TextView;

    .line 199
    const v4, 0x7f0c013c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_car_gearbox_textview_text:Landroid/widget/TextView;

    .line 200
    const v4, 0x7f0c013a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_engine_num_textview_text:Landroid/widget/TextView;

    .line 202
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 207
    :goto_0
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->detailView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->datas:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->getHistory()Lcom/cnlaunch/x431pro/module/golo/model/History;

    move-result-object v2

    .line 209
    .local v2, history:Lcom/cnlaunch/x431pro/module/golo/model/History;
    const-string/jumbo v4, "0"

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/History;->getIs_read()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 210
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvName:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvSee:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    :goto_1
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/History;->getAlarm_type()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/History;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/History;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/History;->getContent()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 227
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/History;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_0
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->expend:Landroid/widget/ImageView;

    const v5, 0x7f020171

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 232
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->datas:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->getRemindDetail()Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;

    move-result-object v3

    .line 233
    .local v3, remindDetail:Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;
    if-eqz v3, :cond_1

    .line 234
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_car_num_textview_text:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;->getMine_car_plate_num()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_car_type_textview_text:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;->getMine_car_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_car_brand_textview_text:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;->getAuto_code()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_car_model_textview_text:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;->getCar_type_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_car_vin_textview_text:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;->getCar_brand_vin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_car_year_textview_text:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;->getCar_producing_year()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_car_discharge_textview_text:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;->getCar_displacement()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_car_gearbox_textview_text:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;->getCar_gearbox_type()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->customer_engine_num_textview_text:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;->getCar_engine_num()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :cond_1
    return-object p2

    .line 204
    .end local v1           #detailViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;
    .end local v2           #history:Lcom/cnlaunch/x431pro/module/golo/model/History;
    .end local v3           #remindDetail:Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;
    :cond_2
    const-string/jumbo v4, "RemindAdapter"

    const-string/jumbo v5, "displayDetail convertView != null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;

    .restart local v1       #detailViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;
    goto/16 :goto_0

    .line 216
    .restart local v2       #history:Lcom/cnlaunch/x431pro/module/golo/model/History;
    :cond_3
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 217
    .local v0, color:I
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvName:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-object v4, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvSee:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private displayHistory(ILandroid/view/View;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/16 v6, 0xaa

    const/high16 v5, -0x100

    .line 258
    if-nez p2, :cond_1

    .line 259
    const-string/jumbo v3, "RemindAdapter"

    const-string/jumbo v4, "displayHistory convertView == null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300c9

    invoke-virtual {v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 261
    new-instance v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;

    invoke-direct {v2, p0, v8}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;-><init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;)V

    .line 262
    .local v2, viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;
    const v3, 0x7f0c0269

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->detailView:Landroid/view/View;

    .line 263
    const v3, 0x7f0c0263

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvName:Landroid/widget/TextView;

    .line 264
    const v3, 0x7f0c0266

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvTime:Landroid/widget/TextView;

    .line 265
    const v3, 0x7f0c0268

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvDetail:Landroid/widget/TextView;

    .line 266
    const v3, 0x7f0c0265

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvSee:Landroid/widget/TextView;

    .line 267
    const v3, 0x7f0c0264

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvContent:Landroid/widget/TextView;

    .line 268
    const v3, 0x7f0c0267

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->expend:Landroid/widget/ImageView;

    .line 269
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 274
    :goto_0
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->detailView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->datas:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->getHistory()Lcom/cnlaunch/x431pro/module/golo/model/History;

    move-result-object v1

    .line 276
    .local v1, history:Lcom/cnlaunch/x431pro/module/golo/model/History;
    const-string/jumbo v3, "0"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/History;->getIs_read()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvSee:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    :goto_1
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/History;->getAlarm_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/History;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    const-string/jumbo v3, "RemindAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "history.getMsg():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/History;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/History;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/History;->getContent()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 295
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/History;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_0
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->expend:Landroid/widget/ImageView;

    const v4, 0x7f0204db

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 298
    return-object p2

    .line 271
    .end local v1           #history:Lcom/cnlaunch/x431pro/module/golo/model/History;
    .end local v2           #viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;
    :cond_1
    const-string/jumbo v3, "RemindAdapter"

    const-string/jumbo v4, "displayHistory convertView != null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;

    .restart local v2       #viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;
    goto/16 :goto_0

    .line 283
    .restart local v1       #history:Lcom/cnlaunch/x431pro/module/golo/model/History;
    :cond_2
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 284
    .local v0, color:I
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$DetailViewHold;->tvSee:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private displayRemoteDetail(ILandroid/view/View;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"

    .prologue
    const/4 v5, 0x0

    .line 153
    if-nez p2, :cond_0

    .line 154
    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;

    invoke-direct {v1, p0, v5}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;-><init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;)V

    .line 155
    .local v1, remoteViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300ca

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 156
    const v3, 0x7f0c026a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;->id:Landroid/widget/TextView;

    .line 157
    const v3, 0x7f0c026e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;->carNum:Landroid/widget/TextView;

    .line 158
    const v3, 0x7f0c026d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;->carType:Landroid/widget/TextView;

    .line 159
    const v3, 0x7f0c026f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;->create:Landroid/widget/TextView;

    .line 160
    const v3, 0x7f0c0270

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;->des:Landroid/widget/TextView;

    .line 161
    const v3, 0x7f0c026b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;->name:Landroid/widget/TextView;

    .line 162
    const v3, 0x7f0c026c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;->nick:Landroid/widget/TextView;

    .line 163
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->datas:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->getGoloRemoteOrderInfo()Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    move-result-object v0

    .line 168
    .local v0, goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    iget-object v3, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;->id:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v3, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;->carNum:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getMine_car_plate_num()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v3, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;->carType:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getAuto_code()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getCreated()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, time:Ljava/lang/String;
    iget-object v3, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;->create:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-string/jumbo v6, "yyyy-MM-dd HH:mm"

    invoke-static {v4, v5, v6}, Lcom/cnlaunch/x431pro/utils/Tools;->getDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v3, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;->des:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v3, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getUser_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v3, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;->nick:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getNick_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-object p2

    .line 165
    .end local v0           #goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    .end local v1           #remoteViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;
    .end local v2           #time:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;

    .restart local v1       #remoteViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RemoteViewHold;
    goto :goto_0
.end method

.method private displayRepairDetail(ILandroid/view/View;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"

    .prologue
    const/4 v7, 0x0

    .line 117
    if-nez p2, :cond_2

    .line 118
    new-instance v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;

    invoke-direct {v3, p0, v7}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;-><init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;)V

    .line 119
    .local v3, repairViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300cb

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 120
    const v5, 0x7f0c0271

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->id:Landroid/widget/TextView;

    .line 121
    const v5, 0x7f0c0275

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->carinfo_id:Landroid/widget/TextView;

    .line 122
    const v5, 0x7f0c0273

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->contact_name:Landroid/widget/TextView;

    .line 123
    const v5, 0x7f0c0274

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->contact_phone:Landroid/widget/TextView;

    .line 124
    const v5, 0x7f0c0278

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->created:Landroid/widget/TextView;

    .line 125
    const v5, 0x7f0c027a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->remark:Landroid/widget/TextView;

    .line 126
    const v5, 0x7f0c0276

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->reserve_time:Landroid/widget/TextView;

    .line 127
    const v5, 0x7f0c0279

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->response:Landroid/widget/TextView;

    .line 128
    const v5, 0x7f0c0277

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->shedule_time:Landroid/widget/TextView;

    .line 129
    const v5, 0x7f0c0272

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->user_name:Landroid/widget/TextView;

    .line 130
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    :goto_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->datas:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->getGoloRepairInfo()Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    move-result-object v1

    .line 135
    .local v1, goloRepairInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    iget-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->id:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getReserve_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->carinfo_id:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getCarinfo_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->contact_name:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getContact_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->contact_phone:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getContact_phone()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getCreated()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, c_time:Ljava/lang/String;
    iget-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->created:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    const-string/jumbo v8, "yyyy-MM-dd HH:mm"

    invoke-static {v6, v7, v8}, Lcom/cnlaunch/x431pro/utils/Tools;->getDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->remark:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getReserve_time()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, r_time:Ljava/lang/String;
    iget-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->reserve_time:Landroid/widget/TextView;

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    .end local v2           #r_time:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->response:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getResponse()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getShedule_time()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, s_time:Ljava/lang/String;
    iget-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->shedule_time:Landroid/widget/TextView;

    if-nez v4, :cond_1

    const-string/jumbo v4, ""

    .end local v4           #s_time:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v5, v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;->user_name:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getUser_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-object p2

    .line 132
    .end local v0           #c_time:Ljava/lang/String;
    .end local v1           #goloRepairInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    .end local v3           #repairViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;

    .restart local v3       #repairViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter$RepairViewHold;
    goto/16 :goto_0
.end method


# virtual methods
.method public addDataList(ILjava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "pageNo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 46
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->datas:Ljava/util/List;

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->datas:Ljava/util/List;

    return-object v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->datas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 84
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->datas:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->getType()Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->ordinal()I

    move-result v0

    .line 59
    :goto_0
    return v0

    .line 58
    :cond_0
    const-string/jumbo v0, "RemindAdapter"

    const-string/jumbo v1, "IGNORE_ITEM_VIEW_TYPE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 98
    const-string/jumbo v1, "RemindAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "position:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->datas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->getType()Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    move-result-object v0

    .line 101
    .local v0, type:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;
    const-string/jumbo v1, "RemindAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v1, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->HISTORY:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->displayHistory(ILandroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 111
    :cond_0
    :goto_0
    const-string/jumbo v1, "RemindAdapter"

    const-string/jumbo v2, "end getView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-object p2

    .line 104
    :cond_1
    sget-object v1, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->DETAIL:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->displayDetail(ILandroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 106
    goto :goto_0

    :cond_2
    sget-object v1, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->REMOTE:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->displayRemoteDetail(ILandroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 108
    goto :goto_0

    :cond_3
    sget-object v1, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->REPAIR:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->displayRepairDetail(ILandroid/view/View;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->values()[Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public refresh(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->datas:Ljava/util/List;

    .line 89
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->notifyDataSetChanged()V

    .line 90
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .parameter "selectedPosition"

    .prologue
    .line 93
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->selectedPosition:I

    .line 94
    return-void
.end method

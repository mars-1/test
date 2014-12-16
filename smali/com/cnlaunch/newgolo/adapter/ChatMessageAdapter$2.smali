.class Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;
.super Ljava/lang/Object;
.source "ChatMessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->bindNewsView(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

.field private final synthetic val$created:J

.field private final synthetic val$news_note:Ljava/lang/String;

.field private final synthetic val$news_title:Ljava/lang/String;

.field private final synthetic val$public_id:Ljava/lang/String;

.field private final synthetic val$temp:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;

.field private final synthetic val$url_path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    iput-object p2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;->val$public_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;->val$news_title:Ljava/lang/String;

    iput-object p5, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;->val$news_note:Ljava/lang/String;

    iput-object p6, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;->val$temp:Ljava/lang/String;

    iput-object p7, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;->val$url_path:Ljava/lang/String;

    iput-wide p8, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;->val$created:J

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 338
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$5(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pub_id"

    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;->val$public_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;->val$news_title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string/jumbo v1, "note"

    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;->val$news_note:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string/jumbo v1, "path"

    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;->val$temp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string/jumbo v1, "url_path"

    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;->val$url_path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string/jumbo v1, "created"

    iget-wide v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;->val$created:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 347
    iget-object v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$2;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$5(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 348
    return-void
.end method

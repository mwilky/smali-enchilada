.class Lcom/oneplus/aod/IconMerger$1;
.super Ljava/lang/Object;
.source "IconMerger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/IconMerger;->checkOverflow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/IconMerger;

.field final synthetic val$moreRequired:Z


# direct methods
.method constructor <init>(Lcom/oneplus/aod/IconMerger;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/IconMerger$1;->this$0:Lcom/oneplus/aod/IconMerger;

    iput-boolean p2, p0, Lcom/oneplus/aod/IconMerger$1;->val$moreRequired:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/IconMerger$1;->this$0:Lcom/oneplus/aod/IconMerger;

    invoke-static {v0}, Lcom/oneplus/aod/IconMerger;->access$000(Lcom/oneplus/aod/IconMerger;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/aod/IconMerger$1;->val$moreRequired:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

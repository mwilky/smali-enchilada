.class Lcom/oneplus/aod/ViewInvertHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewInvertHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/ViewInvertHelper;->fade(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/ViewInvertHelper;

.field final synthetic val$invert:Z


# direct methods
.method constructor <init>(Lcom/oneplus/aod/ViewInvertHelper;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/ViewInvertHelper;

    .line 78
    iput-object p1, p0, Lcom/oneplus/aod/ViewInvertHelper$2;->this$0:Lcom/oneplus/aod/ViewInvertHelper;

    iput-boolean p2, p0, Lcom/oneplus/aod/ViewInvertHelper$2;->val$invert:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 81
    iget-boolean v0, p0, Lcom/oneplus/aod/ViewInvertHelper$2;->val$invert:Z

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/ViewInvertHelper$2;->this$0:Lcom/oneplus/aod/ViewInvertHelper;

    invoke-static {v2}, Lcom/oneplus/aod/ViewInvertHelper;->access$100(Lcom/oneplus/aod/ViewInvertHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/oneplus/aod/ViewInvertHelper$2;->this$0:Lcom/oneplus/aod/ViewInvertHelper;

    invoke-static {v2}, Lcom/oneplus/aod/ViewInvertHelper;->access$100(Lcom/oneplus/aod/ViewInvertHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

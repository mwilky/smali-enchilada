.class Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;
.super Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;
.source "GuidedActionsStylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/GuidedActionsStylist;->startExpanded(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    .line 1293
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;-><init>()V

    .line 1294
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;->mRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Ljava/lang/Object;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "transition"    # Ljava/lang/Object;

    .line 1297
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getKeyLine()I

    move-result v0

    .line 1298
    .local v0, "centerY":I
    const/4 v1, 0x0

    .line 1299
    .local v1, "centerX":I
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1300
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;->mRect:Landroid/graphics/Rect;

    return-object v2
.end method

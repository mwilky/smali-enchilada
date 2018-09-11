.class Landroid/support/v17/leanback/widget/TitleView$1;
.super Landroid/support/v17/leanback/widget/TitleViewAdapter;
.source "TitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/TitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/TitleView;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/TitleView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/TitleView;

    .line 42
    iput-object p1, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 60
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/TitleView;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSearchAffordanceColors()Landroid/support/v17/leanback/widget/SearchOrbView$Colors;
    .locals 1

    .line 65
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/TitleView;->getSearchAffordanceColors()Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    move-result-object v0

    return-object v0
.end method

.method public getSearchAffordanceView()Landroid/view/View;
    .locals 1

    .line 45
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/TitleView;->getSearchAffordanceView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 70
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/TitleView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setAnimationEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 55
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleView;->enableAnimation(Z)V

    .line 56
    return-void
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleView;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void
.end method

.method public setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 50
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleView;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method public setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 1
    .param p1, "colors"    # Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .line 80
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleView;->setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 81
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "titleText"    # Ljava/lang/CharSequence;

    .line 85
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleView;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method public updateComponentsVisibility(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 90
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleView;->updateComponentsVisibility(I)V

    .line 91
    return-void
.end method

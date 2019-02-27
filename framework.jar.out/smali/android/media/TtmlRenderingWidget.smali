.class Landroid/media/TtmlRenderingWidget;
.super Landroid/widget/LinearLayout;
.source "TtmlRenderer.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;


# instance fields
.field private mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 675
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 676
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 679
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 680
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 683
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 684
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 688
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 690
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/TtmlRenderingWidget;->setLayerType(ILandroid/graphics/Paint;)V

    .line 692
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 694
    .local v0, "captionManager":Landroid/view/accessibility/CaptioningManager;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    .line 695
    iget-object v1, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v2

    iget v2, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 696
    iget-object v1, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, v2}, Landroid/media/TtmlRenderingWidget;->addView(Landroid/view/View;II)V

    .line 697
    iget-object v1, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0x51

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 698
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .line 725
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 726
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 730
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 731
    return-void
.end method

.method public setActiveCues(Ljava/util/Vector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .line 734
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 735
    .local v0, "count":I
    const-string v1, ""

    .line 736
    .local v1, "subtitleText":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 737
    invoke-virtual {p1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/TtmlCue;

    .line 738
    .local v3, "cue":Landroid/media/TtmlCue;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/media/TtmlCue;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 736
    .end local v3    # "cue":Landroid/media/TtmlCue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 740
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v2, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz v2, :cond_1

    .line 743
    iget-object v2, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {v2, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 745
    :cond_1
    return-void
.end method

.method public setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 702
    iput-object p1, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 703
    return-void
.end method

.method public setSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 707
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 708
    .local v1, "widthSpec":I
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 710
    .local v0, "heightSpec":I
    invoke-virtual {p0, v1, v0}, Landroid/media/TtmlRenderingWidget;->measure(II)V

    .line 711
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/media/TtmlRenderingWidget;->layout(IIII)V

    .line 712
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 716
    if-eqz p1, :cond_0

    .line 717
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/TtmlRenderingWidget;->setVisibility(I)V

    goto :goto_0

    .line 719
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/media/TtmlRenderingWidget;->setVisibility(I)V

    .line 721
    :goto_0
    return-void
.end method

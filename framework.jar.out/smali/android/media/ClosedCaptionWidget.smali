.class abstract Landroid/media/ClosedCaptionWidget;
.super Landroid/view/ViewGroup;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;


# instance fields
.field protected mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private final mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field protected mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

.field private mHasChangeListener:Z

.field protected mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private final mManager:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/media/ClosedCaptionWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 224
    new-instance v0, Landroid/media/ClosedCaptionWidget$1;

    invoke-direct {v0, p0}, Landroid/media/ClosedCaptionWidget$1;-><init>(Landroid/media/ClosedCaptionWidget;)V

    iput-object v0, p0, Landroid/media/ClosedCaptionWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 155
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/ClosedCaptionWidget;->setLayerType(ILandroid/graphics/Paint;)V

    .line 157
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    .line 158
    sget-object v0, Landroid/media/ClosedCaptionWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 160
    invoke-virtual {p0, p1}, Landroid/media/ClosedCaptionWidget;->createCaptionLayout(Landroid/content/Context;)Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    .line 161
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-interface {v0, v1}, Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 162
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;->setFontScale(F)V

    .line 163
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/media/ClosedCaptionWidget;->addView(Landroid/view/View;II)V

    .line 166
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget;->requestLayout()V

    .line 167
    return-void
.end method

.method static synthetic access$000()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 1

    .line 113
    sget-object v0, Landroid/media/ClosedCaptionWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object v0
.end method

.method private manageChangeListener()V
    .locals 3

    .line 238
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 239
    .local v0, "needsListener":Z
    :goto_0
    iget-boolean v1, p0, Landroid/media/ClosedCaptionWidget;->mHasChangeListener:Z

    if-eq v1, v0, :cond_2

    .line 240
    iput-boolean v0, p0, Landroid/media/ClosedCaptionWidget;->mHasChangeListener:Z

    .line 242
    if-eqz v0, :cond_1

    .line 243
    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v2, p0, Landroid/media/ClosedCaptionWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    goto :goto_1

    .line 245
    :cond_1
    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v2, p0, Landroid/media/ClosedCaptionWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 248
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public abstract createCaptionLayout(Landroid/content/Context;)Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 198
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 200
    invoke-direct {p0}, Landroid/media/ClosedCaptionWidget;->manageChangeListener()V

    .line 201
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 205
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 207
    invoke-direct {p0}, Landroid/media/ClosedCaptionWidget;->manageChangeListener()V

    .line 208
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 218
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 219
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 212
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 213
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 214
    return-void
.end method

.method public setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 173
    iput-object p1, p0, Landroid/media/ClosedCaptionWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 174
    return-void
.end method

.method public setSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 178
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 179
    .local v1, "widthSpec":I
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 181
    .local v0, "heightSpec":I
    invoke-virtual {p0, v1, v0}, Landroid/media/ClosedCaptionWidget;->measure(II)V

    .line 182
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/media/ClosedCaptionWidget;->layout(IIII)V

    .line 183
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 187
    if-eqz p1, :cond_0

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/ClosedCaptionWidget;->setVisibility(I)V

    goto :goto_0

    .line 190
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/media/ClosedCaptionWidget;->setVisibility(I)V

    .line 193
    :goto_0
    invoke-direct {p0}, Landroid/media/ClosedCaptionWidget;->manageChangeListener()V

    .line 194
    return-void
.end method

.class Landroid/support/v17/leanback/widget/ControlBarPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "ControlBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;,
        Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;,
        Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;,
        Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;
    }
.end annotation


# static fields
.field static final MAX_CONTROLS:I = 0x7

.field private static sChildMarginDefault:I

.field private static sControlIconWidth:I


# instance fields
.field mDefaultFocusToMiddle:Z

.field private mLayoutResourceId:I

.field mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

.field mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "layoutResourceId"    # I

    .line 197
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mDefaultFocusToMiddle:Z

    .line 198
    iput p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mLayoutResourceId:I

    .line 199
    return-void
.end method


# virtual methods
.method getChildMarginDefault(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 273
    sget v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sChildMarginDefault:I

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_controls_child_margin_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sChildMarginDefault:I

    .line 277
    :cond_0
    sget v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sChildMarginDefault:I

    return v0
.end method

.method getControlIconWidth(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 281
    sget v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sControlIconWidth:I

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_control_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sControlIconWidth:I

    .line 285
    :cond_0
    sget v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sControlIconWidth:I

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    .line 205
    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mLayoutResourceId:I

    return v0
.end method

.method public getOnItemControlListener()Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;
    .locals 1

    .line 233
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;
    .locals 1

    .line 219
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 249
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    .line 250
    .local v0, "vh":Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;
    move-object v1, p2

    check-cast v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;

    .line 251
    .local v1, "data":Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;
    iget-object v2, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;->adapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq v2, v3, :cond_0

    .line 252
    iget-object v2, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;->adapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iput-object v2, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 253
    iget-object v2, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ObjectAdapter;->registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    .line 257
    :cond_0
    iget-object v2, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;->presenter:Landroid/support/v17/leanback/widget/Presenter;

    iput-object v2, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    .line 258
    iput-object v1, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mData:Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;

    .line 259
    iget-object v2, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->showControls(Landroid/support/v17/leanback/widget/Presenter;)V

    .line 260
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 242
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->getLayoutResourceId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, "v":Landroid/view/View;
    new-instance v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/ControlBarPresenter;Landroid/view/View;)V

    return-object v1
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 264
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    .line 265
    .local v0, "vh":Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v1, v3}, Landroid/support/v17/leanback/widget/ObjectAdapter;->unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    .line 267
    iput-object v2, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 269
    :cond_0
    iput-object v2, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mData:Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;

    .line 270
    return-void
.end method

.method public setBackgroundColor(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;I)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;
    .param p2, "color"    # I

    .line 237
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlsContainer:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 238
    return-void
.end method

.method setDefaultFocusToMiddle(Z)V
    .locals 0
    .param p1, "defaultFocusToMiddle"    # Z

    .line 292
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mDefaultFocusToMiddle:Z

    .line 293
    return-void
.end method

.method public setOnControlClickedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    .line 212
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    .line 213
    return-void
.end method

.method public setOnControlSelectedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    .line 226
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    .line 227
    return-void
.end method

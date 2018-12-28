.class public Lcom/oneplus/settings/AodClockPreviewActivity;
.super Landroid/app/Activity;
.source "AodClockPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mBack:Landroid/widget/ImageButton;

.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsFullScreenMode:Z

.field private mSave:Landroid/widget/TextView;

.field private mStyle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "AodClockPreviewActivity"

    iput-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->TAG:Ljava/lang/String;

    const-string v0, "aod_clock_style"

    iput-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    iput-boolean v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mIsFullScreenMode:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/AodClockPreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/AodClockPreviewActivity$2;-><init>(Lcom/oneplus/settings/AodClockPreviewActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/AodClockPreviewActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/AodClockPreviewActivity;->setFullScreenMode(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/AodClockPreviewActivity;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mBack:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/AodClockPreviewActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mSave:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/AodClockPreviewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/AodClockPreviewActivity;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/AodClockPreviewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setFullScreenMode(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x1006

    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x1007

    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mIsFullScreenMode:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mIsFullScreenMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mIsFullScreenMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/settings/AodClockPreviewActivity;->setFullScreenMode(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodClockPreviewActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    invoke-virtual {v2, v3, v3}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    const v5, 0x7f090037

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mBack:Landroid/widget/ImageButton;

    const v5, 0x7f0900a1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mSave:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x8000000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    const v3, 0x7f0900f0

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/AodClockPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v6, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    if-nez v6, :cond_0

    const v4, 0x7f070067

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    if-ne v6, v4, :cond_1

    const v4, 0x7f070066

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    const v4, 0x7f070065

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    const v4, 0x7f070068

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mBack:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mSave:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/AodClockPreviewActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/AodClockPreviewActivity$1;-><init>(Lcom/oneplus/settings/AodClockPreviewActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

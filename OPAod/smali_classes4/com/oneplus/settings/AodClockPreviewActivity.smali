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

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const-string v0, "AodClockPreviewActivity"

    iput-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "aod_clock_style"

    iput-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    .line 33
    iput-boolean v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mIsFullScreenMode:Z

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Lcom/oneplus/settings/AodClockPreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/AodClockPreviewActivity$2;-><init>(Lcom/oneplus/settings/AodClockPreviewActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/AodClockPreviewActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/AodClockPreviewActivity;
    .param p1, "x1"    # Z

    .line 26
    invoke-direct {p0, p1}, Lcom/oneplus/settings/AodClockPreviewActivity;->setFullScreenMode(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/AodClockPreviewActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/AodClockPreviewActivity;

    .line 26
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mBack:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/AodClockPreviewActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/AodClockPreviewActivity;

    .line 26
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mSave:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/AodClockPreviewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/AodClockPreviewActivity;

    .line 26
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/AodClockPreviewActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/AodClockPreviewActivity;

    .line 26
    iget v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/AodClockPreviewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/AodClockPreviewActivity;

    .line 26
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setFullScreenMode(Z)V
    .locals 3
    .param p1, "isFullscreen"    # Z

    .line 125
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 126
    .local v0, "systemuiVisibility":I
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 128
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 129
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 132
    or-int/lit16 v0, v0, 0x1006

    .line 135
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 137
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 139
    and-int/lit16 v0, v0, -0x1007

    .line 142
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 143
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 146
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mIsFullScreenMode:Z

    .line 147
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 96
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->finish()V

    .line 97
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 106
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

    .line 107
    iget-boolean v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mIsFullScreenMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/settings/AodClockPreviewActivity;->setFullScreenMode(Z)V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodClockPreviewActivity;->setContentView(I)V

    .line 43
    iput-object p0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 46
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0c0024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "mCustomView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    .line 53
    .local v2, "parent":Landroid/widget/Toolbar;
    invoke-virtual {v2, v3, v3}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 55
    const v5, 0x7f090037

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mBack:Landroid/widget/ImageButton;

    .line 56
    const v5, 0x7f09009f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mSave:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 59
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x8000000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 60
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 61
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/settings/AodClockPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    .line 65
    const v3, 0x7f0900ee

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/AodClockPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 66
    .local v3, "preview":Landroid/widget/ImageView;
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget v6, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    if-nez v6, :cond_0

    .line 68
    const v4, 0x7f070067

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 69
    :cond_0
    iget v6, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    if-ne v6, v4, :cond_1

    .line 70
    const v4, 0x7f070066

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 71
    :cond_1
    iget v4, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 72
    const v4, 0x7f070065

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 73
    :cond_2
    iget v4, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mStyle:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    .line 74
    const v4, 0x7f070068

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mBack:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v4, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mSave:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/AodClockPreviewActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/AodClockPreviewActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/AodClockPreviewActivity$1;-><init>(Lcom/oneplus/settings/AodClockPreviewActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    return-void
.end method

.class public Lcom/oneplus/settings/AodChooseClockStyleActivity;
.super Landroid/app/Activity;
.source "AodChooseClockStyleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static KEY_AOD_CLOCK_STYLE:Ljava/lang/String;


# instance fields
.field private mAnalogClock:Landroid/widget/RelativeLayout;

.field private mAnalogClockBorder:Landroid/view/View;

.field private mAnalogClockDes:Landroid/widget/TextView;

.field private mAnalogClockSelected:Landroid/widget/TextView;

.field private mAnalogClockThumb:Landroid/widget/ImageView;

.field private mBackground:Landroid/widget/LinearLayout;

.field private mClassicClock:Landroid/widget/RelativeLayout;

.field private mClassicClockBorder:Landroid/view/View;

.field private mClassicClockDes:Landroid/widget/TextView;

.field private mClassicClockSelected:Landroid/widget/TextView;

.field private mClassicClockThumb:Landroid/widget/ImageView;

.field private mDefaultClock:Landroid/widget/RelativeLayout;

.field private mDefaultClockBorder:Landroid/view/View;

.field private mDefaultClockDes:Landroid/widget/TextView;

.field private mDefaultClockSelected:Landroid/widget/TextView;

.field private mDefaultClockThumb:Landroid/widget/ImageView;

.field private mDigitalClock:Landroid/widget/RelativeLayout;

.field private mDigitalClockBorder:Landroid/view/View;

.field private mDigitalClockDes:Landroid/widget/TextView;

.field private mDigitalClockSelected:Landroid/widget/TextView;

.field private mDigitalClockThumb:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "aod_clock_style"

    sput-object v0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkCurretClockStyle()V
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->resetSelectedVisibility()V

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/AodChooseClockStyleActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockSelected:Landroid/widget/TextView;

    :goto_0
    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockSelected:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockSelected:Landroid/widget/TextView;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockSelected:Landroid/widget/TextView;

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private init()V
    .locals 6

    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mBackground:Landroid/widget/LinearLayout;

    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClock:Landroid/widget/RelativeLayout;

    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClock:Landroid/widget/RelativeLayout;

    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClock:Landroid/widget/RelativeLayout;

    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClock:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClock:Landroid/widget/RelativeLayout;

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockDes:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockDes:Landroid/widget/TextView;

    const v2, 0x7f100044

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClock:Landroid/widget/RelativeLayout;

    const v2, 0x7f090033

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockThumb:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockThumb:Landroid/widget/ImageView;

    const v3, 0x7f070063

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClock:Landroid/widget/RelativeLayout;

    const v3, 0x7f09010d

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockSelected:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClock:Landroid/widget/RelativeLayout;

    const v4, 0x7f090041

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockBorder:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockDes:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockDes:Landroid/widget/TextView;

    const v5, 0x7f100043

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockThumb:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockThumb:Landroid/widget/ImageView;

    const v5, 0x7f070062

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockSelected:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockBorder:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockDes:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockDes:Landroid/widget/TextView;

    const v5, 0x7f100042

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockThumb:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockThumb:Landroid/widget/ImageView;

    const v5, 0x7f070061

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockSelected:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockBorder:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockDes:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockDes:Landroid/widget/TextView;

    const v1, 0x7f100045

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockThumb:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockThumb:Landroid/widget/ImageView;

    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockSelected:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockBorder:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/oneplus/settings/ThemeColorUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mBackground:Landroid/widget/LinearLayout;

    const v2, 0x7f050200

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockDes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050233

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockDes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockDes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockDes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockBorder:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockBorder:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockBorder:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockBorder:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mBackground:Landroid/widget/LinearLayout;

    const v2, 0x7f0501fc

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockDes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050231

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockDes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockDes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockDes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockBorder:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockBorder:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockBorder:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockBorder:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private resetSelectedVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockSelected:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockSelected:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockSelected:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockSelected:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/settings/AodClockPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/oneplus/settings/AodChooseClockStyleActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/oneplus/settings/AodChooseClockStyleActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/oneplus/settings/AodChooseClockStyleActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/oneplus/settings/AodChooseClockStyleActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f100047

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->init()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->finish()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->checkCurretClockStyle()V

    return-void
.end method

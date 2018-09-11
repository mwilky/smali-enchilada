.class Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$2;
.super Ljava/lang/Object;
.source "QuickPayLottieAnimPreference.java"

# interfaces
.implements Lcom/airbnb/lottie/OnCompositionLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    .line 106
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$2;->this$0:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 109
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$2;->this$0:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->access$100(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$2;->this$0:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->access$100(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$2;->this$0:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->access$200(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 112
    return-void
.end method

.class Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl$1;
.super Landroid/database/ContentObserver;
.source "FingerprintAnimationCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->updateAnimationRes()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->updateAnimationRes()V

    return-void
.end method

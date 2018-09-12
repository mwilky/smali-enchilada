.class public final synthetic Lcom/oneplus/doze/-$$Lambda$NotificationIconDozeHelper$CEiAaKgz9EncOlkR-pfEbK-tfTc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/doze/NotificationIconDozeHelper;

.field private final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/doze/NotificationIconDozeHelper;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/doze/-$$Lambda$NotificationIconDozeHelper$CEiAaKgz9EncOlkR-pfEbK-tfTc;->f$0:Lcom/oneplus/doze/NotificationIconDozeHelper;

    iput-object p2, p0, Lcom/oneplus/doze/-$$Lambda$NotificationIconDozeHelper$CEiAaKgz9EncOlkR-pfEbK-tfTc;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/doze/-$$Lambda$NotificationIconDozeHelper$CEiAaKgz9EncOlkR-pfEbK-tfTc;->f$0:Lcom/oneplus/doze/NotificationIconDozeHelper;

    iget-object v1, p0, Lcom/oneplus/doze/-$$Lambda$NotificationIconDozeHelper$CEiAaKgz9EncOlkR-pfEbK-tfTc;->f$1:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/oneplus/doze/NotificationIconDozeHelper;->lambda$fadeImageColorFilter$0(Lcom/oneplus/doze/NotificationIconDozeHelper;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.class final Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;
.super Ljava/lang/Object;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/drawable/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Splat"
.end annotation


# instance fields
.field final colorIndex:F

.field final radius:F

.field final x:F

.field final y:F


# direct methods
.method constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->x:F

    iput p2, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->y:F

    iput p3, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->radius:F

    iput p4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->colorIndex:F

    return-void
.end method

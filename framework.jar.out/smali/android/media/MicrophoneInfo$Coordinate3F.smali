.class public final Landroid/media/MicrophoneInfo$Coordinate3F;
.super Ljava/lang/Object;
.source "MicrophoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MicrophoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Coordinate3F"
.end annotation


# instance fields
.field public final x:F

.field public final y:F

.field public final z:F


# direct methods
.method constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->x:F

    iput p2, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->y:F

    iput p3, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->z:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/media/MicrophoneInfo$Coordinate3F;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/media/MicrophoneInfo$Coordinate3F;

    iget v3, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->x:F

    iget v4, v1, Landroid/media/MicrophoneInfo$Coordinate3F;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->y:F

    iget v4, v1, Landroid/media/MicrophoneInfo$Coordinate3F;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->z:F

    iget v4, v1, Landroid/media/MicrophoneInfo$Coordinate3F;->z:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

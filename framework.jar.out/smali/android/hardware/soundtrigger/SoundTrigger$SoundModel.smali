.class public Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundModel"
.end annotation


# static fields
.field public static final TYPE_GENERIC_SOUND:I = 0x1

.field public static final TYPE_KEYPHRASE:I = 0x0

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field public final data:[B

.field public final type:I

.field public final uuid:Ljava/util/UUID;

.field public final vendorUuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    iput-object p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    iput p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->data:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-nez v2, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->data:[B

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->data:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    if-nez v3, :cond_5

    iget-object v3, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    if-eqz v3, :cond_6

    return v1

    :cond_5
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    :cond_6
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    if-nez v3, :cond_7

    iget-object v3, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    if-eqz v3, :cond_8

    return v1

    :cond_7
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 6

    const/16 v0, 0x1f

    const/4 v1, 0x1

    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->data:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    add-int/2addr v3, v4

    mul-int v1, v2, v3

    iget v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    add-int/2addr v1, v4

    mul-int v3, v2, v1

    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->hashCode()I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v5

    :goto_1
    add-int/2addr v2, v5

    return v2
.end method

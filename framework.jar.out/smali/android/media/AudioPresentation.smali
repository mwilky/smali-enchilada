.class public final Landroid/media/AudioPresentation;
.super Ljava/lang/Object;
.source "AudioPresentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioPresentation$MasteringIndicationType;
    }
.end annotation


# static fields
.field public static final MASTERED_FOR_3D:I = 0x3

.field public static final MASTERED_FOR_HEADPHONE:I = 0x4

.field public static final MASTERED_FOR_STEREO:I = 0x1

.field public static final MASTERED_FOR_SURROUND:I = 0x2

.field public static final MASTERING_NOT_INDICATED:I


# instance fields
.field private final mAudioDescriptionAvailable:Z

.field private final mDialogueEnhancementAvailable:Z

.field private final mLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLanguage:Ljava/lang/String;

.field private final mMasteringIndication:I

.field private final mPresentationId:I

.field private final mProgramId:I

.field private final mSpokenSubtitlesAvailable:Z


# direct methods
.method public constructor <init>(IILjava/util/Map;Ljava/lang/String;IZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    iput p2, p0, Landroid/media/AudioPresentation;->mProgramId:I

    iput-object p4, p0, Landroid/media/AudioPresentation;->mLanguage:Ljava/lang/String;

    iput p5, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    iput-boolean p6, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    iput-boolean p7, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    iput-boolean p8, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getLabels()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/util/Locale;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Landroid/media/AudioPresentation;->mLanguage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMasteringIndication()I
    .locals 1

    iget v0, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    return v0
.end method

.method public getPresentationId()I
    .locals 1

    iget v0, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    return v0
.end method

.method public getProgramId()I
    .locals 1

    iget v0, p0, Landroid/media/AudioPresentation;->mProgramId:I

    return v0
.end method

.method public hasAudioDescription()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    return v0
.end method

.method public hasDialogueEnhancement()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    return v0
.end method

.method public hasSpokenSubtitles()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    return v0
.end method

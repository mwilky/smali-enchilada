.class Lcom/android/internal/os/ZygoteConnection$Arguments;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Arguments"
.end annotation


# instance fields
.field abiListQuery:Z

.field apiBlacklistExemptions:[Ljava/lang/String;

.field appDataDir:Ljava/lang/String;

.field capabilitiesSpecified:Z

.field effectiveCapabilities:J

.field gid:I

.field gidSpecified:Z

.field gids:[I

.field hiddenApiAccessLogSampleRate:I

.field instructionSet:Ljava/lang/String;

.field invokeWith:Ljava/lang/String;

.field mountExternal:I

.field niceName:Ljava/lang/String;

.field permittedCapabilities:J

.field preloadDefault:Z

.field preloadPackage:Ljava/lang/String;

.field preloadPackageCacheKey:Ljava/lang/String;

.field preloadPackageLibFileName:Ljava/lang/String;

.field preloadPackageLibs:Ljava/lang/String;

.field remainingArgs:[Ljava/lang/String;

.field rlimits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field runtimeFlags:I

.field seInfo:Ljava/lang/String;

.field seInfoSpecified:Z

.field startChildZygote:Z

.field targetSdkVersion:I

.field targetSdkVersionSpecified:Z

.field uid:I

.field uidSpecified:Z


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->hiddenApiAccessLogSampleRate:I

    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteConnection$Arguments;->parseArgs([Ljava/lang/String;)V

    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v1, v0

    move v0, v2

    :goto_0
    array-length v4, p1

    const/4 v5, 0x0

    if-ge v1, v4, :cond_23

    aget-object v4, p1, v1

    const-string v6, "--"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_0
    const-string v6, "--setuid="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v7, 0x3d

    if-eqz v6, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v5, :cond_1

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    nop

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    goto/16 :goto_4

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate arg specified"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v6, "--setgid="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v5, :cond_3

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    nop

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    goto/16 :goto_4

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate arg specified"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string v6, "--target-sdk-version="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersionSpecified:Z

    if-nez v5, :cond_5

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersionSpecified:Z

    nop

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    goto/16 :goto_4

    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate target-sdk-version specified"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string v6, "--runtime-args"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v3, 0x1

    goto/16 :goto_4

    :cond_7
    const-string v6, "--runtime-flags="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    nop

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeFlags:I

    goto/16 :goto_4

    :cond_8
    const-string v6, "--seinfo="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfoSpecified:Z

    if-nez v5, :cond_9

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfoSpecified:Z

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    goto/16 :goto_4

    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate arg specified"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    const-string v6, "--capabilities="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v8, 0x2

    if-eqz v6, :cond_d

    iget-boolean v6, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    if-nez v6, :cond_c

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-ne v8, v2, :cond_b

    aget-object v5, v7, v5

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    iget-wide v8, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    iput-wide v8, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    goto :goto_1

    :cond_b
    aget-object v5, v7, v5

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    aget-object v5, v7, v2

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    :goto_1
    goto/16 :goto_4

    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate arg specified"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    const-string v6, "--rlimit="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v9, 0x3

    if-eqz v6, :cond_11

    nop

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    if-ne v7, v9, :cond_10

    array-length v7, v6

    new-array v7, v7, [I

    nop

    :goto_2
    array-length v8, v6

    if-ge v5, v8, :cond_e

    aget-object v8, v6, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_e
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-nez v5, :cond_f

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    :cond_f
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "--rlimit= should have 3 comma-delimited ints"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    const-string v6, "--setgroups="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    if-nez v5, :cond_13

    nop

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    array-length v6, v5

    sub-int/2addr v6, v2

    :goto_3
    if-ltz v6, :cond_12

    iget-object v7, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    aget-object v8, v5, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_12
    goto/16 :goto_4

    :cond_13
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate arg specified"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    const-string v6, "--invoke-with"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-nez v5, :cond_15

    add-int/lit8 v1, v1, 0x1

    :try_start_0
    aget-object v5, p1, v1

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "--invoke-with requires argument"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate arg specified"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    const-string v6, "--nice-name="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-nez v5, :cond_17

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    goto/16 :goto_4

    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate arg specified"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_18
    const-string v6, "--mount-external-default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    iput v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    goto/16 :goto_4

    :cond_19
    const-string v6, "--mount-external-read"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    iput v8, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    goto/16 :goto_4

    :cond_1a
    const-string v6, "--mount-external-write"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    goto/16 :goto_4

    :cond_1b
    const-string v6, "--query-abi-list"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    goto/16 :goto_4

    :cond_1c
    const-string v6, "--instruction-set="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->instructionSet:Ljava/lang/String;

    goto/16 :goto_4

    :cond_1d
    const-string v6, "--app-data-dir="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->appDataDir:Ljava/lang/String;

    goto :goto_4

    :cond_1e
    const-string v6, "--preload-package"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    add-int/lit8 v1, v1, 0x1

    aget-object v5, p1, v1

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackage:Ljava/lang/String;

    add-int/2addr v1, v2

    aget-object v5, p1, v1

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageLibs:Ljava/lang/String;

    add-int/2addr v1, v2

    aget-object v5, p1, v1

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageLibFileName:Ljava/lang/String;

    add-int/2addr v1, v2

    aget-object v5, p1, v1

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageCacheKey:Ljava/lang/String;

    goto :goto_4

    :cond_1f
    const-string v6, "--preload-default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadDefault:Z

    const/4 v0, 0x0

    goto :goto_4

    :cond_20
    const-string v6, "--start-child-zygote"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->startChildZygote:Z

    goto :goto_4

    :cond_21
    const-string v6, "--set-api-blacklist-exemptions"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    add-int/lit8 v5, v1, 0x1

    array-length v6, p1

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->apiBlacklistExemptions:[Ljava/lang/String;

    array-length v1, p1

    const/4 v0, 0x0

    goto :goto_4

    :cond_22
    const-string v6, "--hidden-api-log-sampling-rate="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->hiddenApiAccessLogSampleRate:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    const/4 v0, 0x0

    :goto_4
    add-int/2addr v1, v2

    goto/16 :goto_0

    :catch_1
    move-exception v2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid log sampling rate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_23
    :goto_5
    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    if-eqz v2, :cond_25

    array-length v2, p1

    sub-int/2addr v2, v1

    if-gtz v2, :cond_24

    goto :goto_6

    :cond_24
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected arguments after --query-abi-list."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_25
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackage:Ljava/lang/String;

    if-eqz v2, :cond_27

    array-length v2, p1

    sub-int/2addr v2, v1

    if-gtz v2, :cond_26

    goto :goto_6

    :cond_26
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected arguments after --preload-package."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    if-eqz v0, :cond_29

    if-eqz v3, :cond_28

    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {p1, v1, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_28
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected argument : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_29
    :goto_6
    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->startChildZygote:Z

    if-eqz v2, :cond_2d

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v6, v4

    :goto_7
    if-ge v5, v6, :cond_2b

    aget-object v7, v4, v5

    const-string v8, "--zygote-socket="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a

    const/4 v2, 0x1

    goto :goto_8

    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_2b
    :goto_8
    if-eqz v2, :cond_2c

    goto :goto_9

    :cond_2c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "--start-child-zygote specified without --zygote-socket="

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2d
    :goto_9
    return-void
.end method

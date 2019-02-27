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
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 377
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 389
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    .line 481
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->hiddenApiAccessLogSampleRate:I

    .line 489
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteConnection$Arguments;->parseArgs([Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 10
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 502
    const/4 v0, 0x0

    .line 504
    .local v0, "curArg":I
    const/4 v1, 0x0

    .line 506
    .local v1, "seenRuntimeArgs":Z
    const/4 v2, 0x1

    move v3, v1

    move v1, v0

    move v0, v2

    .line 507
    .local v0, "expectRuntimeArgs":Z
    .local v1, "curArg":I
    .local v3, "seenRuntimeArgs":Z
    :goto_0
    array-length v4, p1

    const/4 v5, 0x0

    if-ge v1, v4, :cond_23

    .line 508
    aget-object v4, p1, v1

    .line 510
    .local v4, "arg":Ljava/lang/String;
    const-string v6, "--"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 511
    add-int/lit8 v1, v1, 0x1

    .line 512
    goto/16 :goto_5

    .line 513
    :cond_0
    const-string v6, "--setuid="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v7, 0x3d

    if-eqz v6, :cond_2

    .line 514
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v5, :cond_1

    .line 518
    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    .line 519
    nop

    .line 520
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 519
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    goto/16 :goto_4

    .line 515
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate arg specified"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 521
    :cond_2
    const-string v6, "--setgid="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 522
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v5, :cond_3

    .line 526
    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    .line 527
    nop

    .line 528
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 527
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    goto/16 :goto_4

    .line 523
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate arg specified"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 529
    :cond_4
    const-string v6, "--target-sdk-version="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 530
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersionSpecified:Z

    if-nez v5, :cond_5

    .line 534
    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersionSpecified:Z

    .line 535
    nop

    .line 536
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 535
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    goto/16 :goto_4

    .line 531
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate target-sdk-version specified"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 537
    :cond_6
    const-string v6, "--runtime-args"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 538
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 539
    :cond_7
    const-string v6, "--runtime-flags="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 540
    nop

    .line 541
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 540
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeFlags:I

    goto/16 :goto_4

    .line 542
    :cond_8
    const-string v6, "--seinfo="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 543
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfoSpecified:Z

    if-nez v5, :cond_9

    .line 547
    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfoSpecified:Z

    .line 548
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    goto/16 :goto_4

    .line 544
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate arg specified"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 549
    :cond_a
    const-string v6, "--capabilities="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v8, 0x2

    if-eqz v6, :cond_d

    .line 550
    iget-boolean v6, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    if-nez v6, :cond_c

    .line 554
    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->capabilitiesSpecified:Z

    .line 555
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 557
    .local v6, "capString":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 559
    .local v7, "capStrings":[Ljava/lang/String;
    array-length v8, v7

    if-ne v8, v2, :cond_b

    .line 560
    aget-object v5, v7, v5

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    .line 561
    iget-wide v8, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    iput-wide v8, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    goto :goto_1

    .line 563
    :cond_b
    aget-object v5, v7, v5

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    .line 564
    aget-object v5, v7, v2

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    .line 566
    .end local v6    # "capString":Ljava/lang/String;
    .end local v7    # "capStrings":[Ljava/lang/String;
    :goto_1
    goto/16 :goto_4

    .line 551
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate arg specified"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 566
    :cond_d
    const-string v6, "--rlimit="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v9, 0x3

    if-eqz v6, :cond_11

    .line 568
    nop

    .line 569
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 571
    .local v6, "limitStrings":[Ljava/lang/String;
    array-length v7, v6

    if-ne v7, v9, :cond_10

    .line 575
    array-length v7, v6

    new-array v7, v7, [I

    .line 577
    .local v7, "rlimitTuple":[I
    nop

    .local v5, "i":I
    :goto_2
    array-length v8, v6

    if-ge v5, v8, :cond_e

    .line 578
    aget-object v8, v6, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v5

    .line 577
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 581
    .end local v5    # "i":I
    :cond_e
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-nez v5, :cond_f

    .line 582
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    .line 585
    :cond_f
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    .end local v6    # "limitStrings":[Ljava/lang/String;
    .end local v7    # "rlimitTuple":[I
    goto/16 :goto_4

    .line 572
    .restart local v6    # "limitStrings":[Ljava/lang/String;
    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "--rlimit= should have 3 comma-delimited ints"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 586
    .end local v6    # "limitStrings":[Ljava/lang/String;
    :cond_11
    const-string v6, "--setgroups="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 587
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    if-nez v5, :cond_13

    .line 592
    nop

    .line 593
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 595
    .local v5, "params":[Ljava/lang/String;
    array-length v6, v5

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    .line 597
    array-length v6, v5

    sub-int/2addr v6, v2

    .local v6, "i":I
    :goto_3
    if-ltz v6, :cond_12

    .line 598
    iget-object v7, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    aget-object v8, v5, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v6

    .line 597
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 600
    .end local v5    # "params":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_12
    goto/16 :goto_4

    .line 588
    :cond_13
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate arg specified"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 600
    :cond_14
    const-string v6, "--invoke-with"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 601
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-nez v5, :cond_15

    .line 606
    add-int/lit8 v1, v1, 0x1

    :try_start_0
    aget-object v5, p1, v1

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    goto/16 :goto_4

    .line 607
    :catch_0
    move-exception v2

    .line 608
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "--invoke-with requires argument"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 602
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate arg specified"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 611
    :cond_16
    const-string v6, "--nice-name="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 612
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-nez v5, :cond_17

    .line 616
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    goto/16 :goto_4

    .line 613
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate arg specified"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 617
    :cond_18
    const-string v6, "--mount-external-default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 618
    iput v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    goto/16 :goto_4

    .line 619
    :cond_19
    const-string v6, "--mount-external-read"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 620
    iput v8, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    goto/16 :goto_4

    .line 621
    :cond_1a
    const-string v6, "--mount-external-write"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 622
    iput v9, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    goto/16 :goto_4

    .line 623
    :cond_1b
    const-string v6, "--query-abi-list"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 624
    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    goto/16 :goto_4

    .line 625
    :cond_1c
    const-string v6, "--instruction-set="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 626
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->instructionSet:Ljava/lang/String;

    goto/16 :goto_4

    .line 627
    :cond_1d
    const-string v6, "--app-data-dir="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 628
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->appDataDir:Ljava/lang/String;

    goto :goto_4

    .line 629
    :cond_1e
    const-string v6, "--preload-package"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 630
    add-int/lit8 v1, v1, 0x1

    aget-object v5, p1, v1

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackage:Ljava/lang/String;

    .line 631
    add-int/2addr v1, v2

    aget-object v5, p1, v1

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageLibs:Ljava/lang/String;

    .line 632
    add-int/2addr v1, v2

    aget-object v5, p1, v1

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageLibFileName:Ljava/lang/String;

    .line 633
    add-int/2addr v1, v2

    aget-object v5, p1, v1

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageCacheKey:Ljava/lang/String;

    goto :goto_4

    .line 634
    :cond_1f
    const-string v6, "--preload-default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 635
    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadDefault:Z

    .line 636
    const/4 v0, 0x0

    goto :goto_4

    .line 637
    :cond_20
    const-string v6, "--start-child-zygote"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 638
    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->startChildZygote:Z

    goto :goto_4

    .line 639
    :cond_21
    const-string v6, "--set-api-blacklist-exemptions"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 642
    add-int/lit8 v5, v1, 0x1

    array-length v6, p1

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->apiBlacklistExemptions:[Ljava/lang/String;

    .line 643
    array-length v1, p1

    .line 644
    const/4 v0, 0x0

    goto :goto_4

    .line 645
    :cond_22
    const-string v6, "--hidden-api-log-sampling-rate="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 646
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 648
    .local v5, "rateStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->hiddenApiAccessLogSampleRate:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 652
    nop

    .line 653
    const/4 v0, 0x0

    .line 507
    .end local v4    # "arg":Ljava/lang/String;
    .end local v5    # "rateStr":Ljava/lang/String;
    :goto_4
    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 649
    .restart local v4    # "arg":Ljava/lang/String;
    .restart local v5    # "rateStr":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 650
    .local v2, "nfe":Ljava/lang/NumberFormatException;
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

    .line 659
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .end local v4    # "arg":Ljava/lang/String;
    .end local v5    # "rateStr":Ljava/lang/String;
    :cond_23
    :goto_5
    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    if-eqz v2, :cond_25

    .line 660
    array-length v2, p1

    sub-int/2addr v2, v1

    if-gtz v2, :cond_24

    goto :goto_6

    .line 661
    :cond_24
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected arguments after --query-abi-list."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 663
    :cond_25
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackage:Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 664
    array-length v2, p1

    sub-int/2addr v2, v1

    if-gtz v2, :cond_26

    goto :goto_6

    .line 665
    :cond_26
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected arguments after --preload-package."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 668
    :cond_27
    if-eqz v0, :cond_29

    .line 669
    if-eqz v3, :cond_28

    .line 673
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    .line 674
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {p1, v1, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 670
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

    .line 677
    :cond_29
    :goto_6
    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->startChildZygote:Z

    if-eqz v2, :cond_2d

    .line 678
    const/4 v2, 0x0

    .line 679
    .local v2, "seenChildSocketArg":Z
    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v6, v4

    :goto_7
    if-ge v5, v6, :cond_2b

    aget-object v7, v4, v5

    .line 680
    .local v7, "arg":Ljava/lang/String;
    const-string v8, "--zygote-socket="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 681
    const/4 v2, 0x1

    .line 682
    goto :goto_8

    .line 679
    .end local v7    # "arg":Ljava/lang/String;
    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 685
    :cond_2b
    :goto_8
    if-eqz v2, :cond_2c

    .end local v2    # "seenChildSocketArg":Z
    goto :goto_9

    .line 686
    .restart local v2    # "seenChildSocketArg":Z
    :cond_2c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "--start-child-zygote specified without --zygote-socket="

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 690
    .end local v2    # "seenChildSocketArg":Z
    :cond_2d
    :goto_9
    return-void
.end method

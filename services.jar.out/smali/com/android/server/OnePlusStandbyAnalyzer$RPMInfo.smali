.class public Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RPMInfo"
.end annotation


# instance fields
.field public mCount:I

.field public mEnd:I

.field public mIsVmin:Z

.field public mStart:I

.field public mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;I)V
    .locals 1
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;
    .param p2, "count"    # I

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    .line 678
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    .line 679
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    .line 680
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    .line 682
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    .line 683
    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    .line 684
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vmin:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->aosd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-ne p1, v0, :cond_1

    .line 685
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    .line 687
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;III)V
    .locals 1
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;
    .param p2, "count"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    .line 678
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    .line 679
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    .line 680
    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    .line 689
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    .line 690
    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    .line 691
    iput p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    .line 692
    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    .line 693
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vmin:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->aosd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-ne p1, v0, :cond_1

    .line 694
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    .line 696
    :cond_1
    return-void
.end method


# virtual methods
.method public isVlowAbnormal()Z
    .locals 3

    .line 701
    const/4 v0, 0x0

    .line 702
    .local v0, "result":Z
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$9;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$RPM_MODE_TYPE:[I

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 707
    :pswitch_0
    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 704
    :pswitch_1
    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 710
    :cond_0
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isVmin()Z
    .locals 1

    .line 698
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    return v0
.end method

.method public isVminAbnormal()Z
    .locals 3

    .line 713
    const/4 v0, 0x0

    .line 714
    .local v0, "result":Z
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$9;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$RPM_MODE_TYPE:[I

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 719
    :pswitch_0
    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 716
    :pswitch_1
    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 722
    :cond_0
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# RPMInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

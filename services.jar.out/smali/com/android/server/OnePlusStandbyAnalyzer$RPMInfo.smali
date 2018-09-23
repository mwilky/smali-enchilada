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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vmin:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->aosd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    iput p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mStart:I

    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mEnd:I

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vmin:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->aosd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public isVlowAbnormal()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$9;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$RPM_MODE_TYPE:[I

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

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

    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mIsVmin:Z

    return v0
.end method

.method public isVminAbnormal()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$9;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$RPM_MODE_TYPE:[I

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->mCount:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

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

.class public Landroid/media/audiopolicy/AudioMixingRule$Builder;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMixingRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetMixType:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    return-void
.end method

.method private addRuleInternal(Landroid/media/AudioAttributes;Ljava/lang/Integer;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-static {p3}, Landroid/media/audiopolicy/AudioMixingRule;->access$400(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    goto :goto_0

    :cond_0
    iput v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/media/audiopolicy/AudioMixingRule;->access$400(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    if-ne v0, v1, :cond_4

    invoke-static {p3}, Landroid/media/audiopolicy/AudioMixingRule;->access$400(I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible rule for mix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const v2, -0x8001

    and-int/2addr v2, p3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    if-eq v2, v4, :cond_7

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v4, v3, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v5

    if-ne v4, v5, :cond_9

    iget v4, v3, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    if-ne v4, p3, :cond_5

    monitor-exit v0

    return-object p0

    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contradictory rule exists for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    iget-object v4, v3, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    if-ne v4, v5, :cond_9

    iget v4, v3, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    if-ne v4, p3, :cond_6

    monitor-exit v0

    return-object p0

    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contradictory rule exists for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    iget v4, v3, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mIntProp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_9

    iget v4, v3, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    if-ne v4, p3, :cond_8

    monitor-exit v0

    return-object p0

    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contradictory rule exists for UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_9
    :goto_2
    goto/16 :goto_1

    :cond_a
    if-eq v2, v4, :cond_b

    packed-switch v2, :pswitch_data_1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unreachable code in addRuleInternal()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_2
    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    new-instance v4, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    invoke-direct {v4, p1, p3}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;-><init>(Landroid/media/AudioAttributes;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    new-instance v4, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    invoke-direct {v4, p2, p3}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;-><init>(Ljava/lang/Integer;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_3
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_4

    invoke-static {p1}, Landroid/media/audiopolicy/AudioMixingRule;->access$200(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, -0x8001

    and-int/2addr v0, p1

    invoke-static {v0}, Landroid/media/audiopolicy/AudioMixingRule;->access$300(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    instance-of v1, p2, Landroid/media/AudioAttributes;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Landroid/media/AudioAttributes;

    invoke-direct {p0, v1, v2, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInternal(Landroid/media/AudioAttributes;Ljava/lang/Integer;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid AudioAttributes argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {p0, v2, v1, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInternal(Landroid/media/AudioAttributes;Ljava/lang/Integer;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Integer argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null argument for mixing rule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiopolicy/AudioMixingRule;->access$100(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->access$000(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addRuleFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v1, -0x8001

    and-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal rule value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in parcel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object v3, v4

    nop

    :goto_0
    invoke-direct {p0, v2, v3, v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInternal(Landroid/media/AudioAttributes;Ljava/lang/Integer;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public build()Landroid/media/audiopolicy/AudioMixingRule;
    .locals 4

    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule;

    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    iget-object v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/audiopolicy/AudioMixingRule;-><init>(ILjava/util/ArrayList;Landroid/media/audiopolicy/AudioMixingRule$1;)V

    return-object v0
.end method

.method public excludeMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiopolicy/AudioMixingRule;->access$100(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8000

    or-int/2addr v0, p1

    invoke-direct {p0, v0, p2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public excludeRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->access$000(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8000

    or-int/2addr v0, p2

    invoke-direct {p0, v0, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

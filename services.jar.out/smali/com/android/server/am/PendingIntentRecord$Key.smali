.class final Lcom/android/server/am/PendingIntentRecord$Key;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PendingIntentRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# static fields
.field private static final ODD_PRIME_NUMBER:I = 0x25


# instance fields
.field final activity:Lcom/android/server/am/ActivityRecord;

.field allIntents:[Landroid/content/Intent;

.field allResolvedTypes:[Ljava/lang/String;

.field final flags:I

.field final hashCode:I

.field final options:Lcom/android/server/am/SafeActivityOptions;

.field final packageName:Ljava/lang/String;

.field final requestCode:I

.field final requestIntent:Landroid/content/Intent;

.field final requestResolvedType:Ljava/lang/String;

.field final type:I

.field final userId:I

.field final who:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILcom/android/server/am/SafeActivityOptions;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iput-object p4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    array-length v1, p6

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p6, v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz p7, :cond_1

    array-length v0, p7

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p7, v0

    nop

    :cond_1
    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    iput-object p7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    iput p8, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    iput-object p9, p0, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/am/SafeActivityOptions;

    iput p10, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    const/16 v0, 0x17

    const/16 v1, 0x25

    mul-int v2, v1, v0

    add-int/2addr v2, p8

    mul-int v0, v1, v2

    add-int/2addr v0, p5

    mul-int v2, v1, v0

    add-int/2addr v2, p10

    if-eqz p4, :cond_2

    mul-int v0, v1, v2

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v2, v0, v3

    :cond_2
    if-eqz p3, :cond_3

    mul-int v0, v1, v2

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v2, v0, v3

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    mul-int v0, v1, v2

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->filterHashCode()I

    move-result v3

    add-int v2, v0, v3

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_5

    mul-int v0, v1, v2

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v2, v0, v3

    :cond_5
    mul-int v0, v1, v2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    if-eq v2, v3, :cond_4

    return v0

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    :cond_5
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-eq v2, v3, :cond_6

    return v0

    :cond_6
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_8

    return v0

    :cond_7
    iget-object v2, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v2, :cond_8

    return v0

    :cond_8
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v0

    :cond_9
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_a

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "<null>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method typeName()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "startForegroundService"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "startService"

    return-object v0

    :pswitch_2
    const-string v0, "activityResult"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "startActivity"

    return-object v0

    :pswitch_4
    const-string v0, "broadcastIntent"

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

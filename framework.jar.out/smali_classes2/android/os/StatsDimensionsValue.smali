.class public final Landroid/os/StatsDimensionsValue;
.super Ljava/lang/Object;
.source "StatsDimensionsValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final BOOLEAN_VALUE_TYPE:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/StatsDimensionsValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLOAT_VALUE_TYPE:I = 0x6

.field public static final INT_VALUE_TYPE:I = 0x3

.field public static final LONG_VALUE_TYPE:I = 0x4

.field public static final STRING_VALUE_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "StatsDimensionsValue"

.field public static final TUPLE_VALUE_TYPE:I = 0x7


# instance fields
.field private final mField:I

.field private final mValue:Ljava/lang/Object;

.field private final mValueType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/StatsDimensionsValue$1;

    invoke-direct {v0}, Landroid/os/StatsDimensionsValue$1;-><init>()V

    sput-object v0, Landroid/os/StatsDimensionsValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/StatsDimensionsValue;->mField:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    invoke-static {v0, p1}, Landroid/os/StatsDimensionsValue;->readValueFromParcel(ILandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    return-void
.end method

.method private static readValueFromParcel(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    packed-switch p0, :pswitch_data_0

    const-string v0, "StatsDimensionsValue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readValue of an impossible type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [Landroid/os/StatsDimensionsValue;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Landroid/os/StatsDimensionsValue;

    invoke-direct {v3, p1}, Landroid/os/StatsDimensionsValue;-><init>(Landroid/os/Parcel;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static writeValueToParcel(ILjava/lang/Object;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    :try_start_0
    const-string v1, "StatsDimensionsValue"

    goto :goto_1

    :pswitch_0
    move-object v2, p1

    check-cast v2, [Landroid/os/StatsDimensionsValue;

    array-length v3, v2

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget-object v4, v2, v3

    invoke-virtual {v4, p2, p3}, Landroid/os/StatsDimensionsValue;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v1

    :pswitch_1
    move-object v2, p1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeFloat(F)V

    return v1

    :pswitch_2
    move-object v2, p1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    return v1

    :pswitch_3
    move-object v2, p1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    :pswitch_4
    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_5
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readValue of an impossible type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "StatsDimensionsValue"

    const-string/jumbo v3, "writeValue cast failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBooleanValue()Z
    .locals 3

    :try_start_0
    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatsDimensionsValue"

    const-string v2, "Failed to successfully get value"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getField()I
    .locals 1

    iget v0, p0, Landroid/os/StatsDimensionsValue;->mField:I

    return v0
.end method

.method public getFloatValue()F
    .locals 3

    :try_start_0
    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatsDimensionsValue"

    const-string v2, "Failed to successfully get value"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIntValue()I
    .locals 3

    :try_start_0
    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatsDimensionsValue"

    const-string v2, "Failed to successfully get value"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLongValue()J
    .locals 3

    :try_start_0
    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatsDimensionsValue"

    const-string v2, "Failed to successfully get value"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatsDimensionsValue"

    const-string v2, "Failed to successfully get value"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTupleValueList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/StatsDimensionsValue;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    check-cast v0, [Landroid/os/StatsDimensionsValue;

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "StatsDimensionsValue"

    const-string v3, "Failed to successfully get value"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getValueType()I
    .locals 1

    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    return v0
.end method

.method public isValueType(I)Z
    .locals 1

    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/os/StatsDimensionsValue;->mField:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    check-cast v1, [Landroid/os/StatsDimensionsValue;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/os/StatsDimensionsValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "StatsDimensionsValue"

    const-string v2, "Failed to successfully get value"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/os/StatsDimensionsValue;->mField:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/StatsDimensionsValue;->mValueType:I

    iget-object v1, p0, Landroid/os/StatsDimensionsValue;->mValue:Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2}, Landroid/os/StatsDimensionsValue;->writeValueToParcel(ILjava/lang/Object;Landroid/os/Parcel;I)Z

    return-void
.end method

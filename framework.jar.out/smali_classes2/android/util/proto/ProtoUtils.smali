.class public Landroid/util/proto/ProtoUtils;
.super Ljava/lang/Object;
.source "ProtoUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    invoke-virtual {p0, v2, v3, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000003L

    invoke-virtual {p0, v2, v3, p7, p8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    invoke-virtual {p0, v2, v3, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V
    .locals 3

    array-length v0, p5

    array-length v1, p4

    if-ne v0, v1, :cond_3

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p4, v1

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    aget v2, p5, v1

    invoke-virtual {p0, p1, p2, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    :cond_0
    aget v2, p4, v1

    and-int/2addr v2, p3

    if-eqz v2, :cond_1

    aget v2, p5, v1

    invoke-virtual {p0, p1, p2, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of origEnums must match protoEnums"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public final Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WindowManagerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/nano/WindowManagerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskSnapshotProto"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;


# instance fields
.field public insetBottom:I

.field public insetLeft:I

.field public insetRight:I

.field public insetTop:I

.field public isRealSnapshot:Z

.field public isTranslucent:Z

.field public orientation:I

.field public systemUiVisibility:I

.field public windowingMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->clear()Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .locals 2

    sget-object v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->_emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->_emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    sput-object v1, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->_emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->_emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    invoke-direct {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    invoke-direct {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    iput-boolean v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    iput-boolean v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget v2, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    iget v2, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    const/16 v1, 0x10

    if-eq v0, v1, :cond_7

    const/16 v1, 0x18

    if-eq v0, v1, :cond_6

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x28

    if-eq v0, v1, :cond_4

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    const/16 v1, 0x38

    if-eq v0, v1, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    const/16 v1, 0x48

    if-eq v0, v1, :cond_0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_9

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    nop

    :cond_9
    :goto_1
    goto :goto_0

    :cond_a
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_6
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_8
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method

.class public final Lcom/google/analytics/containertag/proto/Serving$Rule;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rule"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Rule;


# instance fields
.field public addMacro:[I

.field public addMacroRuleName:[I

.field public addTag:[I

.field public addTagRuleName:[I

.field public negativePredicate:[I

.field public positivePredicate:[I

.field public removeMacro:[I

.field public removeMacroRuleName:[I

.field public removeTag:[I

.field public removeTagRuleName:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 739
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Rule;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 740
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 743
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    .line 746
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    .line 749
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    .line 752
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    .line 755
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    .line 758
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    .line 761
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    .line 764
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    .line 767
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    .line 770
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    .line 740
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1198
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1192
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1

    .line 773
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    .line 774
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    .line 775
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    .line 776
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    .line 777
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    .line 778
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    .line 779
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    .line 780
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    .line 781
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    .line 782
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    .line 783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    .line 784
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->cachedSize:I

    .line 785
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 790
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 791
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$Rule;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 792
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 793
    .local v1, "other":Lcom/google/analytics/containertag/proto/Serving$Rule;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public getSerializedSize()I
    .locals 9

    .line 930
    const/4 v0, 0x0

    .line 931
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v1, v1

    if-lez v1, :cond_1

    .line 932
    const/4 v1, 0x0

    .line 933
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    .local v4, "arr$":[I
    array-length v5, v4

    .local v5, "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .local v6, "dataSize":I
    :goto_0
    if-ge v1, v5, :cond_0

    aget v7, v4, v1

    .line 934
    .local v7, "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 933
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 937
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_0
    add-int/2addr v0, v6

    .line 938
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 940
    .end local v6    # "dataSize":I
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v1, v1

    if-lez v1, :cond_3

    .line 941
    const/4 v1, 0x0

    .line 942
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_1
    if-ge v1, v5, :cond_2

    aget v7, v4, v1

    .line 943
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 942
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 946
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_2
    add-int/2addr v0, v6

    .line 947
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 949
    .end local v6    # "dataSize":I
    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v1, v1

    if-lez v1, :cond_5

    .line 950
    const/4 v1, 0x0

    .line 951
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_2
    if-ge v1, v5, :cond_4

    aget v7, v4, v1

    .line 952
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 951
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 955
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_4
    add-int/2addr v0, v6

    .line 956
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 958
    .end local v6    # "dataSize":I
    :cond_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v1, v1

    if-lez v1, :cond_7

    .line 959
    const/4 v1, 0x0

    .line 960
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_3
    if-ge v1, v5, :cond_6

    aget v7, v4, v1

    .line 961
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 960
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 964
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_6
    add-int/2addr v0, v6

    .line 965
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 967
    .end local v6    # "dataSize":I
    :cond_7
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v1, v1

    if-lez v1, :cond_9

    .line 968
    const/4 v1, 0x0

    .line 969
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_4
    if-ge v1, v5, :cond_8

    aget v7, v4, v1

    .line 970
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 969
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 973
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_8
    add-int/2addr v0, v6

    .line 974
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 976
    .end local v6    # "dataSize":I
    :cond_9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v1, v1

    if-lez v1, :cond_b

    .line 977
    const/4 v1, 0x0

    .line 978
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_5
    if-ge v1, v5, :cond_a

    aget v7, v4, v1

    .line 979
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 978
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 982
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_a
    add-int/2addr v0, v6

    .line 983
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 985
    .end local v6    # "dataSize":I
    :cond_b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v1, v1

    if-lez v1, :cond_d

    .line 986
    const/4 v1, 0x0

    .line 987
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_6
    if-ge v1, v5, :cond_c

    aget v7, v4, v1

    .line 988
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 987
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 991
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_c
    add-int/2addr v0, v6

    .line 992
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 994
    .end local v6    # "dataSize":I
    :cond_d
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v1, v1

    if-lez v1, :cond_f

    .line 995
    const/4 v1, 0x0

    .line 996
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_7
    if-ge v1, v5, :cond_e

    aget v7, v4, v1

    .line 997
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 996
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1000
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_e
    add-int/2addr v0, v6

    .line 1001
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 1003
    .end local v6    # "dataSize":I
    :cond_f
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v1, v1

    if-lez v1, :cond_11

    .line 1004
    const/4 v1, 0x0

    .line 1005
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_8
    if-ge v1, v5, :cond_10

    aget v7, v4, v1

    .line 1006
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 1005
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1009
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_10
    add-int/2addr v0, v6

    .line 1010
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 1012
    .end local v6    # "dataSize":I
    :cond_11
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v1, v1

    if-lez v1, :cond_13

    .line 1013
    const/4 v1, 0x0

    .line 1014
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .local v2, "i$":I
    .restart local v5    # "len$":I
    :goto_9
    if-ge v2, v5, :cond_12

    aget v6, v4, v2

    .line 1015
    .local v6, "element":I
    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v7

    add-int/2addr v1, v7

    .line 1014
    .end local v6    # "element":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1018
    .end local v2    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_12
    add-int/2addr v0, v1

    .line 1019
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v2, v2

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 1021
    .end local v1    # "dataSize":I
    :cond_13
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1022
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->cachedSize:I

    .line 1023
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 807
    const/16 v0, 0x11

    .line 808
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    const/4 v2, 0x0

    const/16 v3, 0x1f

    if-nez v1, :cond_0

    mul-int/2addr v0, v3

    goto :goto_1

    .line 810
    :cond_0
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .local v1, "result":I
    :goto_0
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 811
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 810
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 814
    .end local v0    # "i":I
    :cond_1
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    if-nez v1, :cond_2

    mul-int/2addr v0, v3

    goto :goto_3

    .line 816
    :cond_2
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_2
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 817
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 820
    .end local v0    # "i":I
    :cond_3
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    if-nez v1, :cond_4

    mul-int/2addr v0, v3

    goto :goto_5

    .line 822
    :cond_4
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_4
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 823
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 826
    .end local v0    # "i":I
    :cond_5
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    if-nez v1, :cond_6

    mul-int/2addr v0, v3

    goto :goto_7

    .line 828
    :cond_6
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_6
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v4, v4

    if-ge v0, v4, :cond_7

    .line 829
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 832
    .end local v0    # "i":I
    :cond_7
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_7
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    if-nez v1, :cond_8

    mul-int/2addr v0, v3

    goto :goto_9

    .line 834
    :cond_8
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_8
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v4, v4

    if-ge v0, v4, :cond_9

    .line 835
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 838
    .end local v0    # "i":I
    :cond_9
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    if-nez v1, :cond_a

    mul-int/2addr v0, v3

    goto :goto_b

    .line 840
    :cond_a
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_a
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v4, v4

    if-ge v0, v4, :cond_b

    .line 841
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 844
    .end local v0    # "i":I
    :cond_b
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    if-nez v1, :cond_c

    mul-int/2addr v0, v3

    goto :goto_d

    .line 846
    :cond_c
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_c
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v4, v4

    if-ge v0, v4, :cond_d

    .line 847
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 846
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 850
    .end local v0    # "i":I
    :cond_d
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_d
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    if-nez v1, :cond_e

    mul-int/2addr v0, v3

    goto :goto_f

    .line 852
    :cond_e
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_e
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v4, v4

    if-ge v0, v4, :cond_f

    .line 853
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 852
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 856
    .end local v0    # "i":I
    :cond_f
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_f
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    if-nez v1, :cond_10

    mul-int/2addr v0, v3

    goto :goto_11

    .line 858
    :cond_10
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_10
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v4, v4

    if-ge v0, v4, :cond_11

    .line 859
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 858
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 862
    .end local v0    # "i":I
    :cond_11
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_11
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    if-nez v1, :cond_12

    mul-int/2addr v0, v3

    goto :goto_13

    .line 864
    :cond_12
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_12
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v4, v4

    if-ge v0, v4, :cond_13

    .line 865
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 868
    .end local v0    # "i":I
    :cond_13
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_13
    mul-int/2addr v3, v0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_14

    goto :goto_14

    :cond_14
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_14
    add-int/2addr v3, v2

    .line 869
    .end local v0    # "result":I
    .local v3, "result":I
    return v3
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 6
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1031
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1032
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 1036
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_a

    .line 1037
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    goto/16 :goto_b

    .line 1173
    :sswitch_0
    const/16 v2, 0x50

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1174
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v3, v3

    .line 1175
    .local v3, "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1176
    .local v4, "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1177
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    .line 1178
    :goto_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1180
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1178
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1183
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1184
    goto/16 :goto_c

    .line 1159
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_1
    const/16 v2, 0x48

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1160
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v3, v3

    .line 1161
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1162
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1163
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    .line 1164
    :goto_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1

    .line 1165
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1166
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1164
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1169
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1170
    goto/16 :goto_c

    .line 1145
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_2
    const/16 v2, 0x40

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1146
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v3, v3

    .line 1147
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1148
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1149
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    .line 1150
    :goto_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_2

    .line 1151
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1152
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1150
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1155
    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1156
    goto/16 :goto_c

    .line 1131
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_3
    const/16 v2, 0x38

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1132
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v3, v3

    .line 1133
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1134
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1135
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    .line 1136
    :goto_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3

    .line 1137
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1138
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1136
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1141
    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1142
    goto/16 :goto_c

    .line 1117
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_4
    const/16 v2, 0x30

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1118
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v3, v3

    .line 1119
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1120
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1121
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    .line 1122
    :goto_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_4

    .line 1123
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1124
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1122
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1127
    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1128
    goto/16 :goto_c

    .line 1103
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_5
    const/16 v2, 0x28

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1104
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v3, v3

    .line 1105
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1106
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1107
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    .line 1108
    :goto_6
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_5

    .line 1109
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1110
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1108
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1113
    :cond_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1114
    goto/16 :goto_c

    .line 1089
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_6
    const/16 v2, 0x20

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1090
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v3, v3

    .line 1091
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1092
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1093
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    .line 1094
    :goto_7
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_6

    .line 1095
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1096
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1094
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1099
    :cond_6
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1100
    goto/16 :goto_c

    .line 1075
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_7
    const/16 v2, 0x18

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1076
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v3, v3

    .line 1077
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1078
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1079
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    .line 1080
    :goto_8
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_7

    .line 1081
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1082
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1080
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1085
    :cond_7
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1086
    goto :goto_c

    .line 1061
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_8
    const/16 v2, 0x10

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1062
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v3, v3

    .line 1063
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1064
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1065
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    .line 1066
    :goto_9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_8

    .line 1067
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1068
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1066
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1071
    :cond_8
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1072
    goto :goto_c

    .line 1047
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_9
    const/16 v2, 0x8

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1048
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v3, v3

    .line 1049
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1050
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1051
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    .line 1052
    :goto_a
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_9

    .line 1053
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1054
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1052
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1057
    :cond_9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1058
    goto :goto_c

    .line 1034
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_a
    return-object p0

    .line 1040
    :cond_a
    :goto_b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1042
    return-object p0

    .line 1187
    .end local v0    # "tag":I
    :cond_b
    :goto_c
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x18 -> :sswitch_7
        0x20 -> :sswitch_6
        0x28 -> :sswitch_5
        0x30 -> :sswitch_4
        0x38 -> :sswitch_3
        0x40 -> :sswitch_2
        0x48 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 736
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 874
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    move v3, v1

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    .line 876
    .local v4, "element":I
    const/4 v5, 0x1

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 875
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 879
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 881
    .restart local v4    # "element":I
    const/4 v5, 0x2

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 880
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 884
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    if-eqz v0, :cond_2

    .line 885
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    .line 886
    .restart local v4    # "element":I
    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 885
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 889
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    if-eqz v0, :cond_3

    .line 890
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v2, :cond_3

    aget v4, v0, v3

    .line 891
    .restart local v4    # "element":I
    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 890
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 894
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    if-eqz v0, :cond_4

    .line 895
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_4
    if-ge v3, v2, :cond_4

    aget v4, v0, v3

    .line 896
    .restart local v4    # "element":I
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 895
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 899
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    if-eqz v0, :cond_5

    .line 900
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_5
    if-ge v3, v2, :cond_5

    aget v4, v0, v3

    .line 901
    .restart local v4    # "element":I
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 900
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 904
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_5
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    if-eqz v0, :cond_6

    .line 905
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_6
    if-ge v3, v2, :cond_6

    aget v4, v0, v3

    .line 906
    .restart local v4    # "element":I
    const/4 v5, 0x7

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 905
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 909
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_6
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    if-eqz v0, :cond_7

    .line 910
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_7
    if-ge v3, v2, :cond_7

    aget v4, v0, v3

    .line 911
    .restart local v4    # "element":I
    const/16 v5, 0x8

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 910
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 914
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_7
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    if-eqz v0, :cond_8

    .line 915
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_8
    if-ge v3, v2, :cond_8

    aget v4, v0, v3

    .line 916
    .restart local v4    # "element":I
    const/16 v5, 0x9

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 915
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 919
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_8
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    if-eqz v0, :cond_9

    .line 920
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .local v1, "i$":I
    .restart local v2    # "len$":I
    :goto_9
    if-ge v1, v2, :cond_9

    aget v3, v0, v1

    .line 921
    .local v3, "element":I
    const/16 v4, 0xa

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 920
    .end local v3    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 924
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_9
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 926
    return-void
.end method

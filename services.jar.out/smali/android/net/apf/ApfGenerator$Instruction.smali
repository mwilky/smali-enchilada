.class Landroid/net/apf/ApfGenerator$Instruction;
.super Ljava/lang/Object;
.source "ApfGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Instruction"
.end annotation


# instance fields
.field private mCompareBytes:[B

.field private mHasImm:Z

.field private mImm:I

.field private mImmSigned:Z

.field private mImmSize:B

.field private mLabel:Ljava/lang/String;

.field private final mOpcode:B

.field private final mRegister:B

.field private mTargetLabel:Ljava/lang/String;

.field private mTargetLabelSize:B

.field offset:I

.field final synthetic this$0:Landroid/net/apf/ApfGenerator;


# direct methods
.method constructor <init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V
    .locals 1

    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {p0, p1, p2, v0}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    return-void
.end method

.method constructor <init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V
    .locals 0

    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p2, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    iget p1, p3, Landroid/net/apf/ApfGenerator$Register;->value:I

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mRegister:B

    return-void
.end method

.method private calculateImmSize(IZ)B
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    const/16 v0, -0x80

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-le p1, v0, :cond_2

    :cond_1
    if-nez p2, :cond_3

    if-ltz p1, :cond_3

    const/16 v0, 0xff

    if-gt p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    if-eqz p2, :cond_4

    const/16 v0, -0x8000

    if-lt p1, v0, :cond_4

    const/16 v0, 0x7fff

    if-le p1, v0, :cond_5

    :cond_4
    if-nez p2, :cond_6

    if-ltz p1, :cond_6

    const v0, 0xffff

    if-gt p1, v0, :cond_6

    :cond_5
    const/4 v0, 0x2

    return v0

    :cond_6
    const/4 v0, 0x4

    return v0
.end method

.method private calculateTargetLabelOffset()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    const-string v1, "__DROP__"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->access$100(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;

    move-result-object v0

    :goto_0
    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    const-string v1, "__PASS__"

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->access$200(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->access$000(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/apf/ApfGenerator$Instruction;

    :goto_1
    if-eqz v0, :cond_3

    iget v1, v0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    iget v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    if-ltz v1, :cond_2

    return v1

    :cond_2
    new-instance v2, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backward branches disallowed; label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v1, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "label not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private generateImmSizeField()B
    .locals 2

    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method private generateInstructionByte()B
    .locals 3

    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generateImmSizeField()B

    move-result v0

    iget-byte v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    shl-int/lit8 v1, v1, 0x3

    shl-int/lit8 v2, v0, 0x1

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mRegister:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    return v1
.end method

.method private generatedImmSize()B
    .locals 2

    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSize:B

    iget-byte v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    if-le v0, v1, :cond_0

    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSize:B

    goto :goto_0

    :cond_0
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    :goto_0
    return v0
.end method

.method private writeValue(I[BI)I
    .locals 3

    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    add-int/lit8 v1, p3, 0x1

    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    add-int/lit8 v0, v0, -0x1

    move p3, v1

    goto :goto_0

    :cond_0
    return p3
.end method


# virtual methods
.method generate([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generateInstructionByte()B

    move-result v2

    aput-byte v2, p1, v0

    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->calculateTargetLabelOffset()I

    move-result v0

    invoke-direct {p0, v0, p1, v1}, Landroid/net/apf/ApfGenerator$Instruction;->writeValue(I[BI)I

    move-result v1

    :cond_1
    iget-boolean v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mHasImm:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImm:I

    invoke-direct {p0, v0, p1, v1}, Landroid/net/apf/ApfGenerator$Instruction;->writeValue(I[BI)I

    move-result v1

    :cond_2
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    array-length v3, v3

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    array-length v0, v0

    add-int/2addr v1, v0

    :cond_3
    iget v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    sub-int v0, v1, v0

    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v2

    if-ne v0, v2, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but should have written "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCompareBytes([B)V
    .locals 2

    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNEBS:Landroid/net/apf/ApfGenerator$Opcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "adding compare bytes to non-JNEBS instruction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setImm(IZ)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mHasImm:Z

    iput p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImm:I

    iput-boolean p2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSigned:Z

    invoke-direct {p0, p1, p2}, Landroid/net/apf/ApfGenerator$Instruction;->calculateImmSize(IZ)B

    move-result v0

    iput-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSize:B

    return-void
.end method

.method setLabel(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->access$000(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mLabel:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->access$000(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "adding label to non-label instruction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setSignedImm(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/net/apf/ApfGenerator$Instruction;->setImm(IZ)V

    return-void
.end method

.method setTargetLabel(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    const/4 v0, 0x4

    iput-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    return-void
.end method

.method setUnsignedImm(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/apf/ApfGenerator$Instruction;->setImm(IZ)V

    return-void
.end method

.method shrink()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v0

    iget-byte v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->calculateTargetLabelOffset()I

    move-result v3

    invoke-direct {p0, v3, v1}, Landroid/net/apf/ApfGenerator$Instruction;->calculateImmSize(IZ)B

    move-result v3

    iput-byte v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    iget-byte v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    if-gt v3, v2, :cond_2

    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v3

    if-ge v3, v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "instruction grew"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method size()I
    .locals 2

    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mHasImm:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

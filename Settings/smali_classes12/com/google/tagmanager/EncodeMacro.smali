.class Lcom/google/tagmanager/EncodeMacro;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "EncodeMacro.java"


# static fields
.field private static final ARG0:Ljava/lang/String;

.field private static final DEFAULT_INPUT_FORMAT:Ljava/lang/String; = "text"

.field private static final DEFAULT_OUTPUT_FORMAT:Ljava/lang/String; = "base16"

.field private static final ID:Ljava/lang/String;

.field private static final INPUT_FORMAT:Ljava/lang/String;

.field private static final NO_PADDING:Ljava/lang/String;

.field private static final OUTPUT_FORMAT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->ENCODE:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/EncodeMacro;->ID:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->ARG0:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/EncodeMacro;->ARG0:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->NO_PADDING:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/EncodeMacro;->NO_PADDING:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->INPUT_FORMAT:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/EncodeMacro;->INPUT_FORMAT:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->OUTPUT_FORMAT:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/EncodeMacro;->OUTPUT_FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 28
    sget-object v0, Lcom/google/tagmanager/EncodeMacro;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/google/tagmanager/EncodeMacro;->ARG0:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/FunctionCallImplementation;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static getFunctionId()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/tagmanager/EncodeMacro;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;"
        }
    .end annotation

    .line 36
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v0, Lcom/google/tagmanager/EncodeMacro;->ARG0:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 37
    .local v0, "argumentParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    .line 40
    :cond_0
    invoke-static {v0}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "argument":Ljava/lang/String;
    sget-object v2, Lcom/google/tagmanager/EncodeMacro;->INPUT_FORMAT:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 43
    .local v2, "inputFormatParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v2, :cond_1

    const-string v3, "text"

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "inputFormat":Ljava/lang/String;
    :goto_0
    sget-object v4, Lcom/google/tagmanager/EncodeMacro;->OUTPUT_FORMAT:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 47
    .local v4, "outputFormatParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v4, :cond_2

    const-string v5, "base16"

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "outputFormat":Ljava/lang/String;
    :goto_1
    sget-object v6, Lcom/google/tagmanager/EncodeMacro;->INPUT_FORMAT:Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const/4 v6, 0x0

    .line 53
    .local v6, "flags":I
    sget-object v7, Lcom/google/tagmanager/EncodeMacro;->NO_PADDING:Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 54
    .local v7, "noPaddingParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v7, :cond_3

    invoke-static {v7}, Lcom/google/tagmanager/Types;->valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 55
    or-int/lit8 v6, v6, 0x1

    .line 58
    :cond_3
    const/4 v8, 0x0

    .line 60
    .local v8, "inputBytes":[B
    :try_start_0
    const-string v9, "text"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 61
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move-object v8, v9

    goto :goto_2

    .line 62
    :cond_4
    const-string v9, "base16"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 63
    invoke-static {v1}, Lcom/google/tagmanager/Base16;->decode(Ljava/lang/String;)[B

    move-result-object v9

    move-object v8, v9

    goto :goto_2

    .line 64
    :cond_5
    const-string v9, "base64"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 65
    invoke-static {v1, v6}, Lcom/google/tagmanager/Base64Encoder;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    move-object v8, v9

    goto :goto_2

    .line 66
    :cond_6
    const-string v9, "base64url"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 67
    or-int/lit8 v9, v6, 0x2

    invoke-static {v1, v9}, Lcom/google/tagmanager/Base64Encoder;->decode(Ljava/lang/String;I)[B

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v9

    .line 75
    :goto_2
    nop

    .line 77
    const/4 v9, 0x0

    .line 78
    .local v9, "encoded":Ljava/lang/String;
    const-string v10, "base16"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 79
    invoke-static {v8}, Lcom/google/tagmanager/Base16;->encode([B)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 81
    :cond_7
    const-string v10, "base64"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 82
    invoke-static {v8, v6}, Lcom/google/tagmanager/Base64Encoder;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 83
    :cond_8
    const-string v10, "base64url"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 84
    or-int/lit8 v10, v6, 0x2

    invoke-static {v8, v10}, Lcom/google/tagmanager/Base64Encoder;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    .line 89
    :goto_3
    invoke-static {v9}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v10

    return-object v10

    .line 86
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Encode: unknown output format: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v10

    return-object v10

    .line 69
    .end local v9    # "encoded":Ljava/lang/String;
    :cond_a
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Encode: unknown input format: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v9

    .line 72
    :catch_0
    move-exception v9

    .line 73
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const-string v10, "Encode: invalid input:"

    invoke-static {v10}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v10

    return-object v10

    .line 38
    .end local v1    # "argument":Ljava/lang/String;
    .end local v2    # "inputFormatParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "inputFormat":Ljava/lang/String;
    .end local v4    # "outputFormatParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v5    # "outputFormat":Ljava/lang/String;
    .end local v6    # "flags":I
    .end local v7    # "noPaddingParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v8    # "inputBytes":[B
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b
    :goto_4
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    return-object v1
.end method

.method public isCacheable()Z
    .locals 1

    .line 32
    const/4 v0, 0x1

    return v0
.end method

.class public final Landroid/hardware/cas/V1_0/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static final BAD_VALUE:I = 0x6

.field public static final ERROR_CAS_CANNOT_HANDLE:I = 0x4

.field public static final ERROR_CAS_DECRYPT:I = 0xd

.field public static final ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED:I = 0xc

.field public static final ERROR_CAS_DEVICE_REVOKED:I = 0xb

.field public static final ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION:I = 0x9

.field public static final ERROR_CAS_INVALID_STATE:I = 0x5

.field public static final ERROR_CAS_LICENSE_EXPIRED:I = 0x2

.field public static final ERROR_CAS_NOT_PROVISIONED:I = 0x7

.field public static final ERROR_CAS_NO_LICENSE:I = 0x1

.field public static final ERROR_CAS_RESOURCE_BUSY:I = 0x8

.field public static final ERROR_CAS_SESSION_NOT_OPENED:I = 0x3

.field public static final ERROR_CAS_TAMPER_DETECTED:I = 0xa

.field public static final ERROR_CAS_UNKNOWN:I = 0xe

.field public static final OK:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 136
    .local v1, "flipped":I
    const-string v2, "OK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 138
    const-string v2, "ERROR_CAS_NO_LICENSE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/lit8 v1, v1, 0x1

    .line 141
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 142
    const-string v2, "ERROR_CAS_LICENSE_EXPIRED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit8 v1, v1, 0x2

    .line 145
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 146
    const-string v2, "ERROR_CAS_SESSION_NOT_OPENED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    or-int/lit8 v1, v1, 0x3

    .line 149
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 150
    const-string v2, "ERROR_CAS_CANNOT_HANDLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/lit8 v1, v1, 0x4

    .line 153
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 154
    const-string v2, "ERROR_CAS_INVALID_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    or-int/lit8 v1, v1, 0x5

    .line 157
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 158
    const-string v2, "BAD_VALUE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    or-int/lit8 v1, v1, 0x6

    .line 161
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 162
    const-string v2, "ERROR_CAS_NOT_PROVISIONED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    or-int/lit8 v1, v1, 0x7

    .line 165
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 166
    const-string v2, "ERROR_CAS_RESOURCE_BUSY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    or-int/lit8 v1, v1, 0x8

    .line 169
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 170
    const-string v2, "ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    or-int/lit8 v1, v1, 0x9

    .line 173
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 174
    const-string v2, "ERROR_CAS_TAMPER_DETECTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    or-int/lit8 v1, v1, 0xa

    .line 177
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 178
    const-string v2, "ERROR_CAS_DEVICE_REVOKED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    or-int/lit8 v1, v1, 0xb

    .line 181
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 182
    const-string v2, "ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    or-int/lit8 v1, v1, 0xc

    .line 185
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 186
    const-string v2, "ERROR_CAS_DECRYPT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    or-int/lit8 v1, v1, 0xd

    .line 189
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 190
    const-string v2, "ERROR_CAS_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    or-int/lit8 v1, v1, 0xe

    .line 193
    :cond_d
    if-eq p0, v1, :cond_e

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_e
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 85
    if-nez p0, :cond_0

    .line 86
    const-string v0, "OK"

    return-object v0

    .line 88
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 89
    const-string v0, "ERROR_CAS_NO_LICENSE"

    return-object v0

    .line 91
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 92
    const-string v0, "ERROR_CAS_LICENSE_EXPIRED"

    return-object v0

    .line 94
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 95
    const-string v0, "ERROR_CAS_SESSION_NOT_OPENED"

    return-object v0

    .line 97
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 98
    const-string v0, "ERROR_CAS_CANNOT_HANDLE"

    return-object v0

    .line 100
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 101
    const-string v0, "ERROR_CAS_INVALID_STATE"

    return-object v0

    .line 103
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 104
    const-string v0, "BAD_VALUE"

    return-object v0

    .line 106
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 107
    const-string v0, "ERROR_CAS_NOT_PROVISIONED"

    return-object v0

    .line 109
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 110
    const-string v0, "ERROR_CAS_RESOURCE_BUSY"

    return-object v0

    .line 112
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 113
    const-string v0, "ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION"

    return-object v0

    .line 115
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 116
    const-string v0, "ERROR_CAS_TAMPER_DETECTED"

    return-object v0

    .line 118
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 119
    const-string v0, "ERROR_CAS_DEVICE_REVOKED"

    return-object v0

    .line 121
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 122
    const-string v0, "ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED"

    return-object v0

    .line 124
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 125
    const-string v0, "ERROR_CAS_DECRYPT"

    return-object v0

    .line 127
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 128
    const-string v0, "ERROR_CAS_UNKNOWN"

    return-object v0

    .line 130
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

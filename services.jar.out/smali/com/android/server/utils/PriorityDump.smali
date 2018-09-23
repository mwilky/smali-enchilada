.class public final Lcom/android/server/utils/PriorityDump;
.super Ljava/lang/Object;
.source "PriorityDump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/PriorityDump$PriorityDumper;,
        Lcom/android/server/utils/PriorityDump$PriorityType;
    }
.end annotation


# static fields
.field public static final PRIORITY_ARG:Ljava/lang/String; = "--dump-priority"

.field public static final PRIORITY_ARG_CRITICAL:Ljava/lang/String; = "CRITICAL"

.field public static final PRIORITY_ARG_HIGH:Ljava/lang/String; = "HIGH"

.field public static final PRIORITY_ARG_NORMAL:Ljava/lang/String; = "NORMAL"

.field private static final PRIORITY_TYPE_CRITICAL:I = 0x1

.field private static final PRIORITY_TYPE_HIGH:I = 0x2

.field private static final PRIORITY_TYPE_INVALID:I = 0x0

.field private static final PRIORITY_TYPE_NORMAL:I = 0x3

.field public static final PROTO_ARG:Ljava/lang/String; = "--proto"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void

    :cond_0
    array-length v2, p3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p3

    if-ge v4, v5, :cond_4

    aget-object v5, p3, v4

    const-string v6, "--proto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    aget-object v5, p3, v4

    const-string v6, "--dump-priority"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v5, v4, 0x1

    array-length v6, p3

    if-ge v5, v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    aget-object v5, p3, v4

    invoke-static {v5}, Lcom/android/server/utils/PriorityDump;->getPriorityType(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v3, 0x1

    aget-object v6, p3, v4

    aput-object v6, v2, v3

    move v3, v5

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    array-length v4, p3

    if-ge v3, v4, :cond_5

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, [Ljava/lang/String;

    :cond_5
    packed-switch v1, :pswitch_data_0

    invoke-interface {p0, p1, p2, v2, v0}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    invoke-interface {p0, p1, p2, v2, v0}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void

    :pswitch_1
    invoke-interface {p0, p1, p2, v2, v0}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dumpHigh(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void

    :pswitch_2
    invoke-interface {p0, p1, p2, v2, v0}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getPriorityType(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x76664f19    # -3.699977E-33f

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x5cfe9861

    if-eq v0, v1, :cond_1

    const v1, 0x21d5a2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "HIGH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v0, "CRITICAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "NORMAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v3

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    return v2

    :pswitch_2
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

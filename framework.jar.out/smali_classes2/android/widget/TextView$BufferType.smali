.class public final enum Landroid/widget/TextView$BufferType;
.super Ljava/lang/Enum;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/widget/TextView$BufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/TextView$BufferType;

.field public static final enum EDITABLE:Landroid/widget/TextView$BufferType;

.field public static final enum NORMAL:Landroid/widget/TextView$BufferType;

.field public static final enum SPANNABLE:Landroid/widget/TextView$BufferType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10339
    new-instance v0, Landroid/widget/TextView$BufferType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    new-instance v0, Landroid/widget/TextView$BufferType;

    const-string v1, "SPANNABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/widget/TextView$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    new-instance v0, Landroid/widget/TextView$BufferType;

    const-string v1, "EDITABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/widget/TextView$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 10338
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView$BufferType;

    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/widget/TextView$BufferType;->$VALUES:[Landroid/widget/TextView$BufferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10338
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/TextView$BufferType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 10338
    const-class v0, Landroid/widget/TextView$BufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView$BufferType;

    return-object v0
.end method

.method public static values()[Landroid/widget/TextView$BufferType;
    .locals 1

    .line 10338
    sget-object v0, Landroid/widget/TextView$BufferType;->$VALUES:[Landroid/widget/TextView$BufferType;

    invoke-virtual {v0}, [Landroid/widget/TextView$BufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView$BufferType;

    return-object v0
.end method

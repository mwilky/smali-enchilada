.class public final Landroid/service/autofill/LuhnChecksumValidator;
.super Landroid/service/autofill/InternalValidator;
.source "LuhnChecksumValidator.java"

# interfaces
.implements Landroid/service/autofill/Validator;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/LuhnChecksumValidator;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LuhnChecksumValidator"


# instance fields
.field private final mIds:[Landroid/view/autofill/AutofillId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Landroid/service/autofill/LuhnChecksumValidator$1;

    invoke-direct {v0}, Landroid/service/autofill/LuhnChecksumValidator$1;-><init>()V

    sput-object v0, Landroid/service/autofill/LuhnChecksumValidator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public varargs constructor <init>([Landroid/view/autofill/AutofillId;)V
    .locals 1
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;

    .line 49
    invoke-direct {p0}, Landroid/service/autofill/InternalValidator;-><init>()V

    .line 50
    const-string v0, "ids"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    .line 51
    return-void
.end method

.method private static isLuhnChecksumValid(Ljava/lang/String;)Z
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "sum":I
    const/4 v1, 0x0

    .line 62
    .local v1, "isDoubled":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ltz v2, :cond_5

    .line 63
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    .line 64
    .local v5, "digit":I
    if-ltz v5, :cond_4

    const/16 v6, 0x9

    if-le v5, v6, :cond_0

    .line 66
    goto :goto_2

    .line 70
    :cond_0
    if-eqz v1, :cond_2

    .line 71
    mul-int/lit8 v7, v5, 0x2

    .line 72
    .local v7, "addend":I
    if-le v7, v6, :cond_1

    .line 73
    add-int/lit8 v6, v7, -0x9

    .end local v7    # "addend":I
    .local v6, "addend":I
    goto :goto_1

    .line 76
    .end local v6    # "addend":I
    .restart local v7    # "addend":I
    :cond_1
    move v6, v7

    goto :goto_1

    .end local v7    # "addend":I
    :cond_2
    move v6, v5

    .line 78
    .restart local v6    # "addend":I
    :goto_1
    add-int/2addr v0, v6

    .line 79
    if-nez v1, :cond_3

    move v4, v3

    nop

    :cond_3
    move v1, v4

    .line 62
    .end local v5    # "digit":I
    .end local v6    # "addend":I
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 82
    .end local v2    # "i":I
    :cond_5
    rem-int/lit8 v2, v0, 0xa

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    return v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public isValid(Landroid/service/autofill/ValueFinder;)Z
    .locals 7
    .param p1, "finder"    # Landroid/service/autofill/ValueFinder;

    .line 89
    iget-object v0, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 93
    .local v5, "id":Landroid/view/autofill/AutofillId;
    invoke-interface {p1, v5}, Landroid/service/autofill/ValueFinder;->findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "partialNumber":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 95
    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "LuhnChecksumValidator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No partial number for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    return v1

    .line 98
    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .end local v5    # "id":Landroid/view/autofill/AutofillId;
    .end local v6    # "partialNumber":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Landroid/service/autofill/LuhnChecksumValidator;->isLuhnChecksumValid(Ljava/lang/String;)Z

    move-result v2

    .line 103
    .local v2, "valid":Z
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_4

    const-string v3, "LuhnChecksumValidator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValid("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " chars): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_4
    return v2

    .line 89
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "valid":Z
    :cond_5
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 109
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LuhnChecksumValidator: [ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    iget-object v0, p0, Landroid/service/autofill/LuhnChecksumValidator;->mIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 125
    return-void
.end method

.class public final Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;
.super Ljava/lang/Object;
.source "SettingsValidators.java"

# interfaces
.implements Landroid/provider/SettingsValidators$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SettingsValidators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InclusiveIntegerRangeValidator"
.end annotation


# instance fields
.field private final mMax:I

.field private final mMin:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;->mMin:I

    iput p2, p0, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;->mMax:I

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;->mMin:I

    if-lt v1, v2, :cond_0

    iget v2, p0, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;->mMax:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

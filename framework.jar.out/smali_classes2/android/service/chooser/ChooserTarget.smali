.class public final Landroid/service/chooser/ChooserTarget;
.super Ljava/lang/Object;
.source "ChooserTarget.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ChooserTarget"


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIntentExtras:Landroid/os/Bundle;

.field private mScore:F

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 205
    new-instance v0, Landroid/service/chooser/ChooserTarget$1;

    invoke-direct {v0}, Landroid/service/chooser/ChooserTarget$1;-><init>()V

    sput-object v0, Landroid/service/chooser/ChooserTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/chooser/ChooserTarget;->mTitle:Ljava/lang/CharSequence;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/chooser/ChooserTarget;->mIcon:Landroid/graphics/drawable/Icon;

    goto :goto_0

    .line 121
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/chooser/ChooserTarget;->mIcon:Landroid/graphics/drawable/Icon;

    .line 123
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/chooser/ChooserTarget;->mScore:F

    .line 124
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/service/chooser/ChooserTarget;->mComponentName:Landroid/content/ComponentName;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/chooser/ChooserTarget;->mIntentExtras:Landroid/os/Bundle;

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "score"    # F
    .param p4, "componentName"    # Landroid/content/ComponentName;
    .param p5, "intentExtras"    # Landroid/os/Bundle;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/service/chooser/ChooserTarget;->mTitle:Ljava/lang/CharSequence;

    .line 106
    iput-object p2, p0, Landroid/service/chooser/ChooserTarget;->mIcon:Landroid/graphics/drawable/Icon;

    .line 107
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_0

    .line 111
    iput p3, p0, Landroid/service/chooser/ChooserTarget;->mScore:F

    .line 112
    iput-object p4, p0, Landroid/service/chooser/ChooserTarget;->mComponentName:Landroid/content/ComponentName;

    .line 113
    iput-object p5, p0, Landroid/service/chooser/ChooserTarget;->mIntentExtras:Landroid/os/Bundle;

    .line 114
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Score "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " out of range; must be between 0.0f and 1.0f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 165
    iget-object v0, p0, Landroid/service/chooser/ChooserTarget;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/service/chooser/ChooserTarget;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getIntentExtras()Landroid/os/Bundle;
    .locals 1

    .line 174
    iget-object v0, p0, Landroid/service/chooser/ChooserTarget;->mIntentExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getScore()F
    .locals 1

    .line 156
    iget v0, p0, Landroid/service/chooser/ChooserTarget;->mScore:F

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 135
    iget-object v0, p0, Landroid/service/chooser/ChooserTarget;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChooserTarget{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/chooser/ChooserTarget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/chooser/ChooserTarget;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/chooser/ChooserTarget;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/chooser/ChooserTarget;->mScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 193
    iget-object v0, p0, Landroid/service/chooser/ChooserTarget;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Landroid/service/chooser/ChooserTarget;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v0, p0, Landroid/service/chooser/ChooserTarget;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    :goto_0
    iget v0, p0, Landroid/service/chooser/ChooserTarget;->mScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 201
    iget-object v0, p0, Landroid/service/chooser/ChooserTarget;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 202
    iget-object v0, p0, Landroid/service/chooser/ChooserTarget;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 203
    return-void
.end method

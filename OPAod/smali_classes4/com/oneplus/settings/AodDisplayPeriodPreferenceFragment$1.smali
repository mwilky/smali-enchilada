.class Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;
.super Ljava/lang/Object;
.source "AodDisplayPeriodPreferenceFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->onPreferenceClick(Lcom/oneplus/lib/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$preference:Lcom/oneplus/lib/preference/Preference;

.field final synthetic val$textTime:Lcom/oneplus/settings/TextTime;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;Lcom/oneplus/settings/TextTime;Lcom/oneplus/lib/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;

    .line 114
    iput-object p1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;->this$0:Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;

    iput-object p2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;->val$textTime:Lcom/oneplus/settings/TextTime;

    iput-object p3, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;->val$preference:Lcom/oneplus/lib/preference/Preference;

    iput-object p4, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 4
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;->val$textTime:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v0, p2, p3}, Lcom/oneplus/settings/TextTime;->setTime(II)V

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;->val$preference:Lcom/oneplus/lib/preference/Preference;

    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;->val$textTime:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v1}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;->this$0:Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;

    invoke-static {v0}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->access$000(Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;->val$textTime:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v2}, Lcom/oneplus/settings/TextTime;->toStringIn24()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;->this$0:Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;

    iget v3, v3, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 120
    invoke-static {}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimeSet: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hourOfDay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", min = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", summary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;->val$textTime:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v2}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", db = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;->val$textTime:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v2}, Lcom/oneplus/settings/TextTime;->toStringIn24()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

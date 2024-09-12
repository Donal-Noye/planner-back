import { IsEmail, IsOptional, IsString, MinLength } from 'class-validator'
import { PomodoroSettingsDto } from './pomodoroSettings.dto'

export class UserDto extends PomodoroSettingsDto {
	@IsEmail()
	@IsOptional()
	email?: string

	@IsString()
	@IsOptional()
	name?: string

	@MinLength(6, {
		message: 'Password must be at least 6 characters long'
	})
	@IsString()
	@IsOptional()
	password?: string
}

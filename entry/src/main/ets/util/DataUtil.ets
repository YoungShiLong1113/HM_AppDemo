//获取当前日期并格式化
export default function getCurrentTime(): string {
  let currentDate: Date = new Date();
  let year: number = currentDate.getFullYear();
  let month: number = currentDate.getMonth() + 1;
  let day: number = currentDate.getDate();
  let hours: number = currentDate.getHours();
  let minutes: number = currentDate.getMinutes();
  if (minutes < 10) minutes = Number.parseInt(`0${minutes}`);
  let second: number = currentDate.getSeconds();
  if (second < 10) second = Number.parseInt(`0${second}`)
  return `${year}/${month}/${day}/ ${hours}:${minutes}:${second}`;
}
